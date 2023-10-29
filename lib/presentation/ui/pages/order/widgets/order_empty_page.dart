import 'package:SDB/domain/service/constants/assets.dart';
import 'package:SDB/domain/service/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderEmpty extends StatefulWidget {

  const OrderEmpty({Key? key,})
      : super(key: key);

  @override
  State<OrderEmpty> createState() => _OrderEmptyState();
}

class _OrderEmptyState extends State<OrderEmpty> {
  @override
  Widget build(BuildContext context) {
    // final navbarControllerProvider = Provider.of<HomeNavbarController>(context,);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 3,
        ),
        Center(
          child: Image.asset(Assets.emptyOrderPng),
        ),
        Text(
          "shopping_page.not_data".tr(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    // navbarControllerProvider.navbarChangeItem(0);
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "shopping_page.buy".tr(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}