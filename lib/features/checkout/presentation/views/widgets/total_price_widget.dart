import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
    required this.title,
    required this.price,
  });
  final String title, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold24,
        ),
        Text(
          price,
          style: AppStyles.styleSemiBold24,
        ),
      ],
    );
  }
}
