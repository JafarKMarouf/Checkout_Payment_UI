import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomeCreditCard extends StatefulWidget {
  const CustomeCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomeCreditCard> createState() => _CustomeCreditCardState();
}

class _CustomeCreditCardState extends State<CustomeCreditCard> {
  bool showBackView = false;
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (value) {
            cardNumber = value.cardNumber;
            expiryDate = value.expiryDate;
            cardHolderName = value.cardHolderName;
            cvvCode = value.cvvCode;
            setState(() {});
          },
          autovalidateMode: widget.autovalidateMode,
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
