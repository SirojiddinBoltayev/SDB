


import 'package:SDB/domain/model/category_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_state.freezed.dart';
@freezed
class CatalogState with _$CatalogState{
  const factory CatalogState({
    @Default(false) bool isLoading,
    @Default(false) bool isResponseError,
    CategoryResponse? category,

}) = _CatalogState;

  const CatalogState._();
}