


import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/banner_widget/riverpod/banner_widget_notifier.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/banner_widget/riverpod/banner_widget_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bannerWidgetProvider = StateNotifierProvider.autoDispose<BannerWidgetNotifier, BannerWidgetState>((ref) => BannerWidgetNotifier(bannerRepository));