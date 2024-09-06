import 'package:checkout_payment/core/utils/errors/failure.dart';
import 'package:checkout_payment/core/utils/services/stripe_service.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/repos/payment_repo.dart';
import 'package:dartz/dartz.dart';

class PaymentRepoImpl extends PaymentRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentInput,
  }) async {
    try {
      await stripeService.makePayment(paymentInput: paymentInput);
      return right(null);
    } catch (e) {
      return left(FailureServer(errMsg: e.toString()));
    }
  }
}
