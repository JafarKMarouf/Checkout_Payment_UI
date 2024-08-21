import 'package:flutter/material.dart';

import 'payment_method_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 62,
            child: PaymentMethodsListView(),
          ),
        ],
      ),
    );
  }
}
