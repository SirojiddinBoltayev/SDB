


import 'package:SDB/domain/model/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_page_state.freezed.dart';

@freezed
class OrderPageState with _$OrderPageState {
  const factory OrderPageState({
    @Default(false) bool isLoading,
    @Default([]) List<ProductResponse> product,
    @Default(0) int totalCount,
    ProductResponse? item,
    @Default(1) int? nextPageKey,
  }) = _OrderPageState;
}
