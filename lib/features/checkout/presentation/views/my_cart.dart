import 'package:checkout_payment/core/utils/app_images.dart';
import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/my_cart_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: AppStyles.styleMedium25,
        ),
        leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
      ),
      body: const MyCartBody(),
    );
  }
}
