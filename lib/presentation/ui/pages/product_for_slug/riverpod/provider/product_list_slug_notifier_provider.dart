import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:SDB/presentation/ui/pages/product_for_slug/riverpod/notifier/product_list_slug_notifier.dart';
import 'package:SDB/presentation/ui/pages/product_for_slug/riverpod/state/product_list_slug_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

final categoryProvider =
    StateNotifierProvider.autoDispose.family<ProductListNotifier,ProductListState,int>(
        (ref,id) => ProductListNotifier(categoryRepository: categorySlugRepository,ref: ref,id: id));
