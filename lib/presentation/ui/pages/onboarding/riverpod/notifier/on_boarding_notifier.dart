

import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingNotifier extends StateNotifier<int>{
  OnBoardingNotifier() : super(0);

  void increment(item){
    state = item;
  }

}

