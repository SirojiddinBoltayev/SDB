import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> with AutomaticKeepAliveClientMixin {
  final _intlPhone = const IntlPhoneField().controller;
  final TextEditingController _controller =  TextEditingController();
  bool isChange = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
_intlPhone?.text =  LocalStorage.instance.getNumber();
_intlPhone?.value = TextEditingValue(text: LocalStorage.instance.getNumber() );
_controller.text = LocalStorage.instance.getUserName();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const Spacer(),

          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    false ? CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                      AssetImage(Assets.profileCircleSvg),
                      radius: 55,
                    ) : SvgPicture.asset(Assets.profileCircleSvg,color: AppColors.primaryColor,),
                    const SizedBox(
                      width: 15,
                    ),
                     Text(
                      LocalStorage.instance.getUserName(),
                      style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Text(
                         LocalStorage.instance.getNumber(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.grey),
                    )
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 24.0, right: 24, top: 27),
                  child: TextField(
                    style: const TextStyle(fontSize: 14),
                    controller: _controller,
                    onTap: () {},
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      // label: const Text("Javlonbek"),
                      labelText: "First name",
                      enabled: true,
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                      // contentPadding: EdgeInsets.all(5),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 24.0, right: 24, top: 27),
                  child: IntlPhoneField(
                    style: const TextStyle(fontSize: 14),
                    invalidNumberMessage: "profile_page.not_correct".tr(),
                    showDropdownIcon: false,
                    initialCountryCode: "UZ",
                    controller: _intlPhone,
                    showCountryFlag: false,
                    onTap: () {},
                    onChanged: (value) {
                      final itemValue = value.number.split("");
                      if (itemValue[1] == 9) {
                        itemValue[2] == 9 ||
                            itemValue[2] == 7 ||
                            itemValue[2] == 5 ||
                            itemValue[2] == 1 ||
                            itemValue[2] == 0 ||
                            itemValue[2] == 2
                            ? true
                            : false;
                      } else if (itemValue[1] == 8) {
                        itemValue[2] == 8 ? true : false;
                      }
                    },
                    decoration: InputDecoration(
                      enabled: false,
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                      // contentPadding: EdgeInsets.all(5),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: isChange
                                ? AppColors.primaryColor
                                : AppColors.primaryOpacity,
                            width: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.17,
                ),

              ],
            ),
          ),
          const Spacer(flex: 4,),
          Container(
            width: size.width,
            height: size.height * 0.087,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: isChange
                    ? AppColors.primaryColor
                    : AppColors.primaryOpacity,
                borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: (){

              },
              child:  Center(
                  child: Text(
                    "profile_page.setting.saved".tr(),
                    style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
          ),
          const Spacer(flex: 2,),


        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}











