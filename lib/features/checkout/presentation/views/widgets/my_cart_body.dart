import 'package:checkout_payment/core/utils/app_colors.dart';
import 'package:checkout_payment/core/utils/app_images.dart';
import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:checkout_payment/core/widgets/custome_button.dart';
import 'package:checkout_payment/features/checkout/models/order_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../payment_details_view.dart';
import 'order_info_item.dart';
import 'total_price_widget.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});
  final List<OrderInfoModel> items = const [
    OrderInfoModel(title: 'Order Subtotal', info: r'$42.97'),
    OrderInfoModel(title: 'Discount', info: r'$0'),
    OrderInfoModel(title: 'Shipping', info: r'$8'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // const SizedBox(height: 8),
          Image.asset(Assets.imagesShoppingCartPng),
          const SizedBox(height: 25),
          OrderInfoItem(orderInfoModel: items[0]),
          const SizedBox(height: 3),
          OrderInfoItem(orderInfoModel: items[1]),
          const SizedBox(height: 3),
          OrderInfoItem(orderInfoModel: items[2]),
          const Divider(
            color: AppColors.silver,
            height: 48,
            thickness: 2,
          ),
          const TotalPriceWidget(title: 'Total', price: r'$50.97'),
          const SizedBox(height: 16),
          CustomeButton(
            title: 'Complete Payment',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PaymentDetailsView();
              }));
            },
          ),
          // SizedBox(height: 46),
        ],
      ),
    );
  }
}
