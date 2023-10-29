import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../../domain/service/constants/color.dart';

class PhoneValidator extends StatelessWidget {
  final bool? readOnly;
  void Function(String)? onSubmitted;
  final TextEditingController controller;
   PhoneValidator({super.key,required this.controller,this.readOnly,this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: const TextStyle(fontSize: 14),
      invalidNumberMessage:
      "profile_page.not_correct".tr(),
      autofocus: true,
      showDropdownIcon: false,
      initialCountryCode: "UZ",
      controller: controller,
      showCountryFlag: false,
      readOnly: readOnly ?? false,
      onSubmitted: onSubmitted,
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
        errorBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: AppColors.primaryOpacity, width: 1.0),
        ),
      ),
    );
  }
}
