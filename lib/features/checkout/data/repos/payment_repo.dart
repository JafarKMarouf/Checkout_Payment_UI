import 'package:checkout_payment/core/utils/errors/failure.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class PaymentRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentInput,
  });
}
