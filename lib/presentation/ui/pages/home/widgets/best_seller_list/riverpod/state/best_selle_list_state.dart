


import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../domain/model/all_product_response.dart';
part 'best_selle_list_state.freezed.dart';
@freezed
class BestSellerListState with _$BestSellerListState{
  const factory BestSellerListState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorText,
    @Default([]) List<AllProductResponse> products,
    @Default(0) int totalCount,
    @Default(1) int? nextPageKey,

})  = _BestSellerListState;

  const BestSellerListState._();
}