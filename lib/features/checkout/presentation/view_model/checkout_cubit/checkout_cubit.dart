import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/repos/payment_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this.paymentRepo) : super(CheckoutInitial());
  final PaymentRepoImpl paymentRepo;

  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInput,
  }) async {
    emit(CheckoutLoading());

    var result =
        await paymentRepo.makePayment(paymentInput: paymentIntentInput);

    result.fold(
      (fail) {
        emit(CheckoutFailure(errMsg: fail.errMsg));
      },
      (sucess) {
        emit(CheckoutSuccess());
      },
    );
  }
}
