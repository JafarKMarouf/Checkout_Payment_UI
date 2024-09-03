import 'package:checkout_payment/core/utils/constant/app_styles.dart';
import 'package:checkout_payment/features/checkout/data/models/order_info_model.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.orderInfoModel});
  final OrderInfoModel orderInfoModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          orderInfoModel.title,
          style: AppStyles.styleRegular18,
        ),
        const Spacer(),
        Text(
          orderInfoModel.info,
          style: AppStyles.styleRegular18,
        ),
      ],
    );
  }
}
