import 'package:SDB/presentation/ui/pages/order/widgets/order_empty_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
@RoutePage()
class OrderPage extends ConsumerStatefulWidget {

  const OrderPage({super.key});

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);


    return
      // isEmtpyData ? CreditCardAdd(slug: widget.slug,) :
    const OrderEmpty();


  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}








//
// class ShoppingBox extends StatefulWidget {
//   final String slug;
//
//   const ShoppingBox({Key? key, this.slug =""}) : super(key: key);
//
//   @override
//   State<ShoppingBox> createState() => _ShoppingBoxState();
// }
//
// class _ShoppingBoxState extends State<ShoppingBox> {
//   @override
//   void initState() {
//     widget.slug != "" ? isEmtpyData = true : isEmtpyData = false;
//
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   void dispose() {
//     widget.slug != "" ? isEmtpyData = false : isEmtpyData = false;
//
//     // TODO: implement dispose
//     super.dispose();
//   }
//   bool isEmtpyData = false;
//   @override
//   Widget build(BuildContext context) {
//
//
//     return  isEmtpyData ? CreditCardAdd(slug: widget.slug,) :
//     ShopingBoxEmpty();
//
//
//   }
// }
// class MySeparator extends StatelessWidget {
//   const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
//       : super(key: key);
//   final double height;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         final boxWidth = constraints.constrainWidth();
//         const dashWidth = 10.0;
//         final dashHeight = height;
//         final dashCount = (boxWidth / (2 * dashWidth)).floor();
//         return Flex(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           direction: Axis.horizontal,
//           children: List.generate(dashCount, (_) {
//             return SizedBox(
//               width: dashWidth,
//               height: dashHeight,
//               child: DecoratedBox(
//                 decoration: BoxDecoration(color: color),
//               ),
//             );
//           }),
//         );
//       },
//     );
//   }
// }


