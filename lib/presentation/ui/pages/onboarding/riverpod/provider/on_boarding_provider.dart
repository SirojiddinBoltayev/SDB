
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/on_boarding_notifier.dart';

final onBoardingProvider =
StateNotifierProvider.autoDispose<OnBoardingNotifier, int>(
      (ref) => OnBoardingNotifier(),
);