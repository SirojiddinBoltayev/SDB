import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/model/all_product_response.dart';

part 'product_list_slug_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState({
    @Default(false) bool isLoading,
    @Default([]) List<AllProductResponse> products,
    @Default(0) int totalCount,
    AllProductResponse? item,
    @Default(1) int? nextPageKey,
  }) = _ProductListState;
}
