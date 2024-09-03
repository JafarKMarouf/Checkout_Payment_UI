import 'package:checkout_payment/core/utils/constant/app_images.dart';
import 'package:flutter/material.dart';

import 'payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
  });

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymetMethodsList = const [
    Assets.imagesCriedtCard,
    Assets.imagesPaypal,
    Assets.imagesApple,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymetMethodsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                if (currentIndex != index) {
                  currentIndex = index;
                  setState(() {});
                }
              },
              child: PaymentMethodItem(
                image: paymetMethodsList[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
