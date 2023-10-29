import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/service/constants/color.dart';

class EditNameDialog extends StatefulWidget {
  const EditNameDialog({super.key});

  @override
  State<EditNameDialog> createState() => _EditNameDialogState();
}

class _EditNameDialogState extends State<EditNameDialog> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          style: const TextStyle(fontSize: 14),
          // invalidNumberMessage:
          // "profile_page.not_correct".tr(),
          onSubmitted: (text) {},
          autofocus: true,
          // showDropdownIcon: false,
          // initialCountryCode: "UZ",
          controller: controller,
          // showCountryFlag: false,

          decoration: InputDecoration(
            enabled: true,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: AppColors.primaryOpacity, width: 1.0),
            ),
            // contentPadding: EdgeInsets.all(5),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: AppColors.primaryOpacity, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: AppColors.primaryOpacity, width: 1.0),
            ),
            // errorText: "profile_page.not_correct".tr(),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: AppColors.primaryOpacity, width: 1.0),
            ),
          ),
        ),
        12.verticalSpace,
        InkWell(
          onTap: () async {
            if (controller.text.isNotEmpty) {
              await LocalStorage.instance
                  .setUserName(controller.text)
                  .whenComplete(() => context.router.pop());
            }
          },
          child: Container(
            width: 0.65.sw,
            height: 0.06.sh,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: const Center(
                child: Text(
              "Set Name",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
          ),
        )
      ],
    );
  }
}
