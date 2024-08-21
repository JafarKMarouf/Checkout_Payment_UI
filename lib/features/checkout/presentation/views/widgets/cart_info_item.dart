import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../models/cart_info_model.dart';

class CartInfoItem extends StatelessWidget {
  const CartInfoItem({super.key, required this.cartInfoModel});
  final CartInfoModel cartInfoModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cartInfoModel.title,
          style: AppStyles.styleRegular18,
        ),
        Text(
          cartInfoModel.value,
          style: AppStyles.styleSemiBold18,
        ),
      ],
    );
  }
}
