import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/repos/payment_repo_impl.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.paymentRepo) : super(PaymentInitial());
  final PaymentRepoImpl paymentRepo;

  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInput,
  }) async {
    emit(PaymentLoading());

    var result =
        await paymentRepo.makePayment(paymentInput: paymentIntentInput);

    result.fold(
      (fail) {
        emit(PaymentFailure(errMsg: fail.errMsg));
      },
      (sucess) {
        emit(PaymentSuccess());
      },
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log('$change');
    super.onChange(change);
  }
}
