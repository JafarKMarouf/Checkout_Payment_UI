import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';

List<Widget> buildCustomeDashed() {
  return List.generate(
    25,
    (index) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Container(
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.greyCloud,
            ),
          ),
        ),
      );
    },
  );
}
