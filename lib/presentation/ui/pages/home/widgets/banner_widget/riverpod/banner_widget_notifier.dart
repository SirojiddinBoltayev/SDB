

import 'dart:convert';

import 'package:SDB/domain/model/banner_response.dart';
import 'package:SDB/domain/service/constants/app_constants.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/banner_widget/riverpod/banner_widget_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../domain/handlers/network_exception.dart';
import '../../../../../../../domain/service/utils/app_connective.dart';
import '../../../../../../../infrastructure/repository/banner_repositories.dart';

class BannerWidgetNotifier extends StateNotifier<BannerWidgetState>{
  final BannerRepository _bannerRepository;
  BannerWidgetNotifier(this._bannerRepository) : super(const BannerWidgetState());
  final pageController = PageController(
    viewportFraction: 0.9,
    initialPage: 0,
  );
  void autoScrollBanner({Duration? duration}) async {

    await Future.delayed(duration ?? const Duration(seconds: 7));
    if (pageController.positions.isNotEmpty) {

    if (pageController.page!.toInt() + 1 == state.banners[0].events?.length) {
      await pageController.animateToPage(0,
          duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
    }else{
      await pageController.nextPage(
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    }

    }
    return autoScrollBanner();
  }

  BannerResponse getData()   {
     final data =  jsonDecode(LocalStorage.instance.getData(AppConstants.banner));

     return BannerResponse.fromJson(data);
  }

  incrementPageIndex(int pageIndex){
    state = state.copyWith(pageIndex: pageIndex,);
  }
  Future<void> getBanner({
    VoidCallback? checkYourNetwork,
    VoidCallback? unAuthorised,
    VoidCallback? goToMain,


})async {
    state = state.copyWith(isLoading: true);

    final connected = await AppConnectivity.connectivity();
    if (connected) {

      final response = await _bannerRepository.getBanner();

      response.when(
        success: (data) async {
          await LocalStorage.instance.setData(data.toString(), AppConstants.banner);
          state = state.copyWith(isLoading: false,banners: [data]);


        },
        failure: (failure) {
          state = state.copyWith(isLoading: false,isResponseError: true);
          if (failure == const NetworkExceptions.unauthorisedRequest()) {
            unAuthorised?.call();
          }
          debugPrint('==> login failure: $failure');
        },
      );
    } else {
      state = state.copyWith(isLoading: false,isResponseError: true);

      checkYourNetwork?.call();
    }
}

}