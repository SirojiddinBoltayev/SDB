import 'package:SDB/domain/model/banner_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_widget_state.freezed.dart';

@freezed
class BannerWidgetState with _$BannerWidgetState {
  const BannerWidgetState._();

  const factory BannerWidgetState({
    @Default(0) int pageIndex,
    @Default(true) bool isLoading,
    @Default(false) bool isResponseError,
    @Default([]) List<BannerResponse> banners,
  }) = _BannerWidgetState;
}
