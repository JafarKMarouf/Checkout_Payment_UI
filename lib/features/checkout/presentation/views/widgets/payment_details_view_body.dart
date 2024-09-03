// import 'package:checkout_payment/core/widgets/custome_button.dart';
// import 'package:checkout_payment/features/checkout/presentation/views/custome_credit_card.dart';
// import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
// import 'package:flutter/material.dart';

// import 'payment_method_list_view.dart';

// class PaymentDetailsViewBody extends StatefulWidget {
//   const PaymentDetailsViewBody({super.key});

//   @override
//   State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
// }

// class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
//   final GlobalKey<FormState> formKey = GlobalKey();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         const SliverToBoxAdapter(child: PaymentMethodsListView()),
//         SliverToBoxAdapter(
//           child: CustomeCreditCard(
//             formKey: formKey,
//             autovalidateMode: autovalidateMode,
//           ),
//         ),
//         SliverFillRemaining(
//           hasScrollBody: false,
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 12.0, right: 20, left: 20),
//               child: CustomeButton(
//                 title: 'Pay',
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     formKey.currentState!.save();
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const ThankYouView(),
//                       ),
//                     );
//                   } else {
//                     autovalidateMode = AutovalidateMode.always;
//                     setState(() {});
//                   }
//                 },
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
