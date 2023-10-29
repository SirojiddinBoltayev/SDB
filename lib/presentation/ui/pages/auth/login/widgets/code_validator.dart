import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/service/constants/color.dart';


// @RoutePage()
// class CodeValidatorPage extends ConsumerStatefulWidget {
//   const CodeValidatorPage({super.key});
//
//   @override
//   ConsumerState<CodeValidatorPage> createState() => _CodeValidatorPageState();
// }
//
// class _CodeValidatorPageState extends ConsumerState<CodeValidatorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class CodeValidator extends StatelessWidget {
  void Function(String)? onSubmitted;
  final TextEditingController controller;
   CodeValidator({super.key,required this.controller,
     this.onSubmitted,
   });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 14),
      // invalidNumberMessage:
      // "profile_page.not_correct".tr(),
      onSubmitted: onSubmitted,
      autofocus: true,
      // showDropdownIcon: false,
      // initialCountryCode: "UZ",
      controller: controller,
      // showCountryFlag: false,

      decoration: InputDecoration(

        enabled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: AppColors.primaryOpacity, width: 1.0),
        ),
        // contentPadding: EdgeInsets.all(5),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: AppColors.primaryOpacity, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: AppColors.primaryOpacity, width: 1.0),
        ),
        errorText: "profile_page.not_correct".tr(),
        errorBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: AppColors.primaryOpacity, width: 1.0),
        ),
      ),
    );
  }
}



