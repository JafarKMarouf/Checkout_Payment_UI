import 'package:checkout_payment/core/utils/constant/api_keys.dart';
import 'package:checkout_payment/core/utils/services/api_service.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInput,
  }) async {
    var response = await apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      body: paymentIntentInput.toJson(),
      token: ApiKeys.secretKey,
    );
    var paymentIntent = PaymentIntentModel.fromJson(response);
    return paymentIntent;
  }

  Future<void> initPaymentSheet({
    required String paymentIntentClientSecret,
  }) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Jafar Marouf',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel paymentInput}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInput: paymentInput);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
