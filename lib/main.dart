import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CheckoutPayment());
}

class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThankYouView(),
    );
  }
}
