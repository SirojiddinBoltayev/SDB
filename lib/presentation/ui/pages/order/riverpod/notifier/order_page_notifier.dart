import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../infrastructure/repository/product_slug_repositories.dart';
import '../state/order_page_state.dart';


class ProductListNotifier extends StateNotifier<OrderPageState> {
  final Ref ref;
  final int id;
  final ProductSlugRepository productSlugRepository;

  ProductListNotifier({
    required this.id,
    required this.ref,
    required this.productSlugRepository,
  }) : super(const OrderPageState());




  Future<void> getList(
      { RefreshController? refreshController,
        required String slug,
        bool isRefresh = false,
        // int page = 1 ,
      }) async {

    final response = await productSlugRepository.getProduct(
      slug: slug,
    );
    response.when(
      success: (data) {
          state = state.copyWith(
            isLoading: false,
            item: data,
            // totalCount: state.totalCount + data.products!.length,
          );
      },
      failure: (status) {
      },
    );
  }
}

