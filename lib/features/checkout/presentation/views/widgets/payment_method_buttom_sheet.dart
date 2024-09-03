import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/core/widgets/custome_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';

import 'payment_method_list_view.dart';

void showPaymentMethodButtomSheet(BuildContext context) {
  showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.softPeach,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PaymentMethodsListView(),
              const SizedBox(height: 16),
              CustomeButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                  })
            ],
          ),
        );
      });
}
