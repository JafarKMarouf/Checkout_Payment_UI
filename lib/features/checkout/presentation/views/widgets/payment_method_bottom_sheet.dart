import 'package:checkout_payment/core/utils/constant/app_colors.dart';
import 'package:checkout_payment/features/checkout/data/repos/payment_repo_impl.dart';
import 'package:checkout_payment/features/checkout/presentation/view_model/payment_cubit/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custome_button_bloc_consumer.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
          BlocProvider(
            create: (context) => PaymentCubit(PaymentRepoImpl()),
            child: const CustomeButtonBlocConsumer(),
          ),
        ],
      ),
    );
  }
}
