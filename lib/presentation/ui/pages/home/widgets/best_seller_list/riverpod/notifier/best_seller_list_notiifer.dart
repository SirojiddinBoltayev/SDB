import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/riverpod/state/best_selle_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../../../domain/model/all_product_response.dart';
import '../../../../../../../../infrastructure/repository/best_seller_repositories.dart';

class BestSellerListNotifier extends StateNotifier<BestSellerListState>{
   final BestSellerListRepository _bestSellerListRepository;
   BestSellerListNotifier(this._bestSellerListRepository) : super(const BestSellerListState());

   int _page = 0;
   bool _hasMore = false;
   // final response = _bestSellerListRepository.getBestSellerList();

Future<void> getList(
    { RefreshController? refreshController,
        String? slug,
       bool isRefresh = false,
       int page = 1 ,
    }) async {
   if (isRefresh) {
      _page = 0;
      _hasMore = true;
      refreshController?.requestRefresh();
   }
   if (!_hasMore) {
      refreshController?.loadNoData();
      return;
   }
   if (_page == 0 && !isRefresh) {
      state = state.copyWith(isLoading: true);
   }
   final response = await _bestSellerListRepository.getList(
  page: ++_page,
      // slug: slug,
   );
   response.when(
      success: (data) {
         List<AllProductResponse> orders = isRefresh ? [] : List.from(state.products);
         List<AllProductResponse> newOrders = (data.products ?? []).map((product) {
            return AllProductResponse(
               products: [product],
            );
         }).toList();
         orders.addAll(newOrders);
         _hasMore = newOrders.length >= 10;
         if (_page == 1 && !isRefresh) {
            state = state.copyWith(
               isLoading: false,
               products: orders,
               totalCount: state.totalCount + data.products!.length,
            );
         } else {
            state = state.copyWith(
               products: orders,
               totalCount: state.totalCount + data.products!.length,
            );
         }
         if (isRefresh) {
            refreshController?.refreshCompleted();
         } else {
            refreshController?.loadComplete();
         }
      },
      failure: (status) {
         _page--;
         if (_page == 0) {
            state = state.copyWith(isLoading: false);
         }
         if (isRefresh) {
            refreshController?.refreshFailed();
         } else {
            refreshController?.loadFailed();
         }
      },
   );
}
}

