import 'package:checkout_payment/core/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
