import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/recommended_widget/riverpod/notifier/recommended_notifier.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/recommended_widget/riverpod/state/recommended_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recommendedProvider = StateNotifierProvider.autoDispose<
    RecommendedListNotifier, RecommendedListState>(
  (ref) => RecommendedListNotifier(recommendedRepository),
);
