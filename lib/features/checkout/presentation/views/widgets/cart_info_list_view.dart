import 'package:checkout_payment/features/checkout/data/models/cart_info_model.dart';
import 'package:flutter/cupertino.dart';

import 'cart_info_item.dart';

class CartInfoListView extends StatelessWidget {
  const CartInfoListView({super.key});
  final List<CartInfoModel> items = const [
    CartInfoModel(title: 'Date', value: '01/24/2023'),
    CartInfoModel(title: 'Time', value: '10:15 AM'),
    CartInfoModel(title: 'To', value: 'Sam Louis'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CartInfoItem(cartInfoModel: items[index]);
      },
    );
  }
}
