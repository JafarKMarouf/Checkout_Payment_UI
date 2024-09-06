import 'dart:developer';

import 'package:checkout_payment/core/utils/constant/api_keys.dart';
import 'package:checkout_payment/core/utils/services/api_service.dart';
import 'package:checkout_payment/features/checkout/data/models/customer/customer_input_model.dart';
import 'package:checkout_payment/features/checkout/data/models/customer/customer_model/customer_model.dart';
import 'package:checkout_payment/features/checkout/data/models/ephemeralKey/emphemeral_key_input_model.dart';
import 'package:checkout_payment/features/checkout/data/models/ephemeralKey/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:checkout_payment/features/checkout/data/models/init_payment_sheet_model.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_input_model.dart';
import 'package:checkout_payment/features/checkout/data/models/payment/payment_intent_model/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<CustomerModel> createCustomer({
    CustomerInputModel? customerInput,
  }) async {
    var response = await apiService.post(
      endPoint: 'customers',
      body: customerInput!.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      token: ApiKeys.secretKey,
    );
    var customer = CustomerModel.fromJson(response);
    return customer;
  }

  Future<EphemeralKeyModel> createEmphemeralKeySecret({
    required EmphemeralKeyInputModel ephemeralKeyInput,
  }) async {
    var response = await apiService.post(
      endPoint: 'ephemeral_keys',
      body: ephemeralKeyInput.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Authorization': 'Bearer ${ApiKeys.secretKey}',
        'Stripe-Version': '2023-08-16',
      },
    );
    log('=======response$response============');
    var ephemeralKey = EphemeralKeyModel.fromJson(response);
    return ephemeralKey;
  }

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInput,
  }) async {
    var response = await apiService.post(
      endPoint: 'payment_intents',
      body: paymentIntentInput.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      token: ApiKeys.secretKey,
    );
    var paymentIntent = PaymentIntentModel.fromJson(response);
    return paymentIntent;
  }

  Future<void> initPaymentSheet({
    required InitPaymentSheetModel initPaymentSheetModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Jafar Marouf',
        paymentIntentClientSecret: initPaymentSheetModel.clientSecret,
        customerId: initPaymentSheetModel.customerId,
        customerEphemeralKeySecret: initPaymentSheetModel.ephemeralKeySecret,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel paymentInput}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInput: paymentInput);

    EmphemeralKeyInputModel emphemeralKeyInput =
        EmphemeralKeyInputModel(customerId: paymentIntentModel.customer);

    EphemeralKeyModel ephemeralKeyModel =
        await createEmphemeralKeySecret(ephemeralKeyInput: emphemeralKeyInput);

    var initPayment = InitPaymentSheetModel(
      clientSecret: paymentIntentModel.clientSecret!,
      customerId: paymentInput.customerId,
      ephemeralKeySecret: ephemeralKeyModel.secret,
    );

    await initPaymentSheet(initPaymentSheetModel: initPayment);
    await displayPaymentSheet();
  }
}
