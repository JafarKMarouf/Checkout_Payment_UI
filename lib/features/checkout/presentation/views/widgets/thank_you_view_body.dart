import 'package:checkout_payment/core/utils/app_colors.dart';
import 'package:checkout_payment/core/utils/app_images.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custome_dashed.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 23),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCart(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .17 + 20,
            left: 25,
            right: 25,
            child: Row(
              children: buildCustomeDashed(),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .17,
            child: const CircleAvatar(
              backgroundColor: AppColors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .17,
            child: const CircleAvatar(
              backgroundColor: AppColors.white,
            ),
          ),
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.softPeach,
              child: CircleAvatar(
                radius: 40,
                child: SvgPicture.asset(Assets.imagesCheckout),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
