

import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:SDB/presentation/ui/pages/catalog/riverpod/notifier/catalog_notifier.dart';
import 'package:SDB/presentation/ui/pages/catalog/riverpod/state/catalog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catalogProvider = StateNotifierProvider.autoDispose<CatalogNotifier, CatalogState>((ref) => CatalogNotifier(categoryRepository));