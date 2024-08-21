import 'package:checkout_payment/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.image, this.isActive = false});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            width: 1.5,
            color: isActive ? AppColors.midGreen : AppColors.midGrey,
          ),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? AppColors.midGreen : AppColors.white,
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
