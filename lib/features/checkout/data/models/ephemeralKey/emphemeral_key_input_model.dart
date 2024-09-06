class EmphemeralKeyInputModel {
  final String customerId;
  final String? stripeVersion;

  const EmphemeralKeyInputModel({
    required this.customerId,
    this.stripeVersion,
  });

  Map<String, dynamic> toJson() => {
        'customer': customerId,
        'Stripe-Version': stripeVersion,
      };
}
