import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/smartphone_list_notifier.dart';
import '../state/smartphone_list_state.dart';

final smartphoneListProvider = StateNotifierProvider.autoDispose<
    SmartphoneListNotifier, SmartphoneListState>(
  (ref) => SmartphoneListNotifier(smartphoneRepository),
);
