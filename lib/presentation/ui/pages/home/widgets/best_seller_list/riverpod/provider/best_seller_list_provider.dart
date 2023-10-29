import 'package:SDB/domain/service/dependecy_manager.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/riverpod/notifier/best_seller_list_notiifer.dart';
import 'package:SDB/presentation/ui/pages/home/widgets/best_seller_list/riverpod/state/best_selle_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bestSellerProvider = StateNotifierProvider.autoDispose<
    BestSellerListNotifier, BestSellerListState>(
  (ref) => BestSellerListNotifier(bestSellerRepository),
);
