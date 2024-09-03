part of 'checkout_cubit.dart';

sealed class CheckoutState {}

final class CheckoutInitial extends CheckoutState {}

final class CheckoutLoading extends CheckoutState {}

final class CheckoutSuccess extends CheckoutState {}

final class CheckoutFailure extends CheckoutState {
  final String errMsg;
  CheckoutFailure({required this.errMsg});
}
