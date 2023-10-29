import 'package:SDB/domain/service/utils/lang_list.dart';
import 'package:SDB/domain/service/utils/local_storage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShowDialogLanguage extends StatefulWidget {
  const ShowDialogLanguage({Key? key}) : super(key: key);

  @override
  State<ShowDialogLanguage> createState() => _ShowDialogLanguageState();
}

class _ShowDialogLanguageState extends State<ShowDialogLanguage> {
  List<String> listTitle = [
    "O'zbekcha",
    "Русский",
    "English",
  ];
  List langList = [];
  List<Widget> listIcons = [
    Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Image.asset("assets/icon/png/ic_uzbek.png"),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Image.asset("assets/icon/png/ic_russian.png"),
    ),
    Image.asset("assets/icon/png/ic_english.png"),
  ];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
          // height: size.height * 0.38,
          color: Colors.transparent,
          child: Stack(
            children: [
              SizedBox(
                height: size.height * 0.36,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: size.height * 0.17),
                        Center(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          width: size.width * 0.15,
                          height: 10,
                        )),
                        SizedBox(height: size.height * 0.15),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      height: size.height * 0.36,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "profile_page.setting.lang".tr(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: List.generate(

                              3,
                              growable: false,
                                  (index) => ListTile(
                                onTap: () async {
                                  if (context.mounted) {
                                    await context
                                        .setLocale(Lang.supportedLocales[index]);
                                    await LocalStorage.instance.setLang(Lang.supportedLocales[index].countryCode);
                                  }
                                  if (context.mounted) Navigator.pop(context);

                                  // print(context.locale.toString());
                                  // if (context.mounted) context.popRoute;
                                },
                                title: SizedBox(
                                  height: size.height * 0.08,
                                  child: Row(
                                    children: [
                                      Text(
                                        listTitle[index],
                                      ),
                                    ],
                                  ),
                                ),
                                leading: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    listIcons[index],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );

  }
}
