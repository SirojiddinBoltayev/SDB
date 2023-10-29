import 'package:SDB/presentation/ui/pages/auth/login/riverpod/notifier/login_notifier.dart';
import 'package:SDB/presentation/ui/pages/auth/login/riverpod/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../domain/service/dependecy_manager.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(loginRepository),
);
