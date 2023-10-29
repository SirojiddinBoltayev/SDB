
import 'package:SDB/domain/model/all_product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'recommended_state.freezed.dart';
@freezed
class RecommendedListState with _$RecommendedListState{
  const factory RecommendedListState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorText,
    @Default([]) List<AllProductResponse> products,
    @Default(0) int totalCount,
    @Default(1) int? nextPageKey,
  }) = _RecommendedListState;

  const RecommendedListState._();
}