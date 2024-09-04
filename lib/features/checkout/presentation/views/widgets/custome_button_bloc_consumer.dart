import 'dart:developer';

import 'package:checkout_payment/core/widgets/custome_button.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/presentation/view_model/payment_cubit/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeButtonBlocConsumer extends StatelessWidget {
  const CustomeButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentFailure) {
          log(state.errMsg);
          SnackBar snackBar = SnackBar(content: Text(state.errMsg));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomeButton(
          title: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
          onPressed: () {
            PaymentIntentInputModel paymentIntentInput =
                const PaymentIntentInputModel(amount: '100', currency: 'USD');
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInput: paymentIntentInput);
          },
        );
      },
    );
  }
}
