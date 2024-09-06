class CustomerInputModel {
  final String? name;
  final String? phone;
  final String? email;
  final String? paymentMethod;
  final String? description;

  const CustomerInputModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.paymentMethod,
    required this.description,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'description': description,
        'payment_method': paymentMethod,
      };
}
