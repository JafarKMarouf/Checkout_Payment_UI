import 'package:checkout_payment/core/utils/app_colors.dart';
import 'package:checkout_payment/core/widgets/custome_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customeAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
