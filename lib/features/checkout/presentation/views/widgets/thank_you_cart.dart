import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/core/utils/constant/app_styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/card_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/models/cart_info_model.dart';
import 'barcode_widget.dart';

class ThankYouCart extends StatelessWidget {
  const ThankYouCart({super.key});
  final List<CartInfoModel> items = const [
    CartInfoModel(title: 'Date', value: '01/24/2023'),
    CartInfoModel(title: 'Time', value: '10:15 AM'),
    CartInfoModel(title: 'To', value: 'Sam Louis'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: ShapeDecoration(
        color: AppColors.softPeach,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 66),
          const Text(
            'Thank you!',
            style: AppStyles.styleMedium25,
          ),
          const SizedBox(height: 2),
          const Text(
            'Your transaction was successful',
            style: AppStyles.styleRegular20,
          ),
          const SizedBox(height: 42),
          CartInfoItem(cartInfoModel: items[0]),
          const SizedBox(height: 20),
          CartInfoItem(cartInfoModel: items[1]),
          const SizedBox(height: 20),
          CartInfoItem(cartInfoModel: items[2]),
          const Divider(
            height: 60,
            thickness: 2,
            color: AppColors.silver,
          ),
          const TotalPriceWidget(title: 'Total', price: r'$50.97'),
          const SizedBox(height: 30),
          const CardInfo(),
          const Spacer(),
          const BarCodeWidget(),
          SizedBox(
            height: ((MediaQuery.sizeOf(context).height * .17 + 20) / 2) - 29,
          ),
        ],
      ),
    );
  }
}
