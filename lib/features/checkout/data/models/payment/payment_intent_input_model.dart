class PayementIntentInputModel {
  final String amount;
  final String currency;

  const PayementIntentInputModel({
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currency': currency,
      };
}
