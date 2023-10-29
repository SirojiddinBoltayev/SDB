
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/main_notifier.dart';
import '../state/main_state.dart';


final mainProvider =
StateNotifierProvider.autoDispose<MainNotifier, MainState>(
      (ref) => MainNotifier(),
);