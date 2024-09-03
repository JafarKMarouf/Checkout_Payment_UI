import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/core/utils/constant/app_images.dart';
import 'package:checkout_payment/core/utils/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BarCodeWidget extends StatelessWidget {
  const BarCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesQR),
        Container(
          height: 58,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 29,
          ),
          decoration: ShapeDecoration(
            color: AppColors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.5,
                color: AppColors.midGreen,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text('PAID', style: AppStyles.styleSemiBold24),
        ),
      ],
    );
  }
}
