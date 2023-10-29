



import 'package:SDB/presentation/ui/pages/catalog/riverpod/state/catalog_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../domain/handlers/network_exception.dart';
import '../../../../../../domain/service/utils/app_connective.dart';
import '../../../../../../infrastructure/repository/category_list_repositories.dart';

class CatalogNotifier extends StateNotifier<CatalogState>{
    final CategoryRepository _categoryRepository;

    CatalogNotifier(this._categoryRepository) : super(const CatalogState());


    Future<void> getCategory(
        {VoidCallback? checkYourNetwork,
            VoidCallback? unAuthorised,
            VoidCallback? goToMain,
            required String slug,
            }) async {
        state = state.copyWith(isLoading: true);

        final connected = await AppConnectivity.connectivity();
        if (connected) {
            final response = await _categoryRepository.getCategory(slug: slug);

            response.when(
                success: (data) async {
                    state = state.copyWith(isLoading: false, category: data);
                },
                failure: (failure) {
                    state = state.copyWith(isLoading: false, isResponseError: true);
                    if (failure == const NetworkExceptions.unauthorisedRequest()) {
                        unAuthorised?.call();
                    }
                    debugPrint('==>  failure: $failure');
                },
            );
        } else {
            state = state.copyWith(isLoading: false, isResponseError: true);

            checkYourNetwork?.call();
        }
    }

    // https://api.sdb.uz/dev/v1/category/list
}


