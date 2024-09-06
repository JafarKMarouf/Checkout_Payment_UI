class InitPaymentSheetModel {
  final String clientSecret;
  final String? customerId;
  final String? ephemeralKeySecret;

  const InitPaymentSheetModel({
    required this.clientSecret,
    this.customerId,
    this.ephemeralKeySecret,
  });
}
