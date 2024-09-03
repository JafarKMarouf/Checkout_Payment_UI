import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/core/utils/constant/app_images.dart';
import 'package:checkout_payment/core/utils/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLogo),
          const SizedBox(width: 22.95),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Credit Card',
                style: AppStyles.styleRegular18,
              ),
              Text(
                'Mastercard **78 ',
                style:
                    AppStyles.styleRegular16.copyWith(color: AppColors.liver),
              ),
            ],
          )
        ],
      ),
    );
  }
}
