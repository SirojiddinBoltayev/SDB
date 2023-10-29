import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/domain/service/utils/route_periodic_func.dart';
import 'package:SDB/presentation/ui/pages/auth/login/riverpod/provider/login_provider.dart';
import 'package:SDB/presentation/ui/pages/auth/login/widgets/code_validator.dart';
import 'package:SDB/presentation/ui/pages/auth/login/widgets/phone_validator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:SDB/presentation/routes/routes.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController _intlPhone = TextEditingController();
  final TextEditingController code = TextEditingController();
  final formKeyNumber = GlobalKey<FormState>();
  final formKeyCode = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(loginProvider.notifier);
    final state = ref.watch(loginProvider);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 0.45.sh,
                  width: 0.8.sw,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryOpacity),
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        width: 250,
                        child: Text(
                          "profile_page.write_code".tr(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 27),
                        child: Column(
                          children: [
                            Form(
                              key: formKeyNumber,
                              child: PhoneValidator(
                                readOnly: state.isLogin,
                                onSubmitted: (phone) async {
                                  if (notifier.mounted) {
                                    if (!state.isLogin) {
                                      if (_intlPhone.text.isNotEmpty &&
                                          formKeyNumber.currentState!
                                              .validate()) {
                                        notifier.setNumber(
                                            "+998${_intlPhone.text}");
                                        notifier.login(unAuthorised: () {
                                          //   TODO: Add Snackbar widget
                                        }, checkYourNetwork: () {
                                          //   TODO: Add Snackbar widget
                                        });
                                      }
                                    }
                                  } else {
                                    notifier.dispose();
                                  }
                                },
                                controller: _intlPhone,
                              ),
                            ),
                            state.isLogin
                                ? Form(
                                    key: formKeyCode,
                                    child: CodeValidator(
                                      onSubmitted: (value) async {
                                        if (notifier.mounted) {
                                          if (state.isLogin) {
                                            // LocalStorage.instance.logout();
                                            notifier.setNumberAndCode(
                                                "+998${_intlPhone.text}",
                                                code.text);

                                            //TODO: input post function code
                                            notifier.verify(unAuthorised: () {
                                              //   TODO: Add Snackbar widget
                                            }, checkYourNetwork: () {
                                              //   TODO: Add Snackbar widget
                                            });
                                            ifReturn(
                                                state.isVerify,
                                                await context.router
                                                    .pushAndPopUntil(
                                                        const MainRoute(),
                                                        predicate: (router) =>
                                                            router.settings
                                                                .name ==
                                                            "/main"),
                                                context);

                                            // print(state.isVerify);
                                          }
                                        } else {
                                          notifier.dispose();
                                        }
                                      },
                                      controller: code,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 27),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(25),
                              onTap: () async {
                                if (notifier.mounted) {
                                  if (!state.isLogin) {
                                    if (_intlPhone.text.isNotEmpty &&
                                        formKeyNumber.currentState!
                                            .validate()) {
                                      notifier
                                          .setNumber("+998${_intlPhone.text}");
                                      notifier.login(checkYourNetwork: () {});
                                    }
                                  }
                                  if (state.isLogin) {
                                    // LocalStorage.instance.logout();
                                    notifier.setNumberAndCode(
                                        "+998${_intlPhone.text}", code.text);

                                    //TODO: input post function code
                                    notifier.verify();
                                    ifReturn(
                                        state.isVerify,
                                        await context.router.pushAndPopUntil(
                                            const MainRoute(),
                                            predicate: (router) =>
                                                router.settings.name ==
                                                "/main"),
                                        context);

                                    // print(state.isVerify);
                                  }
                                } else {
                                  notifier.dispose();
                                }
                              },
                              child: Container(
                                width: 0.65.sw,
                                height: 0.06.sh,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: !state.isLoading
                                      ? Text(
                                          "profile_page.code".tr(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: AppColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      : const CircularProgressIndicator(
                                          color: AppColors.white,
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
