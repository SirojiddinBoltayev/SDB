


import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_state.freezed.dart';
@freezed
class FilterState with _$FilterState{
  const factory FilterState({
    @Default(0) int index,
  }) = _FilterState;

  const FilterState._();
}