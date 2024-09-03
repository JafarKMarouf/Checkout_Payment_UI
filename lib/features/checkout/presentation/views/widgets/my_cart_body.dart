import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/core/utils/constant/app_images.dart';
import 'package:checkout_payment/core/widgets/custome_button.dart';
import 'package:checkout_payment/features/checkout/data/models/order_info_model.dart';
import 'package:flutter/material.dart';

import 'order_info_item.dart';
import 'payment_method_buttom_sheet.dart';
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
          const SizedBox(height: 8),
          Center(child: Image.asset(Assets.imagesShoppingCartPng)),
          const SizedBox(height: 15),
          OrderInfoItem(orderInfoModel: items[0]),
          const SizedBox(height: 3),
          OrderInfoItem(orderInfoModel: items[1]),
          const SizedBox(height: 3),
          OrderInfoItem(orderInfoModel: items[2]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: AppColors.silver,
              height: 48,
              thickness: 2,
            ),
          ),
          const TotalPriceWidget(title: 'Total', price: r'$50.97'),
          const SizedBox(height: 16),
          CustomeButton(
            title: 'Complete Payment',
            onPressed: () {
              showPaymentMethodButtomSheet(context);
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
