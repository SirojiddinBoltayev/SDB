import 'package:SDB/presentation/ui/pages/main/riverpod/provider/main_provider.dart';
import 'package:SDB/presentation/ui/pages/main/widgets/cusom_appBar.dart';
import 'package:SDB/presentation/ui/pages/main/widgets/custom_navbar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';

import '../widgets/drawer.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageConsumerState();
}

class _MainPageConsumerState extends ConsumerState<MainPage> with AutomaticKeepAliveClientMixin{

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final notifier = ref.read(mainProvider.notifier);
    final state = ref.watch(mainProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 75.h,bottom: 50.h),
            child: ProsteIndexedStack(
              children: notifier.list,
              index: state.indexPage,
            ),
          ),
          CustomAppBar(scaffoldKey: scaffoldKey,isMainAppBar: true),
          CustomNavBar()
        ],
      ),
      drawer:  DrawerWidget(scaffoldKey: scaffoldKey,),

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
