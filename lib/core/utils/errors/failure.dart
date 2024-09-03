abstract class Failure {
  final String errMsg;
  const Failure({required this.errMsg});
}

class FailureServer extends Failure {
  const FailureServer({required super.errMsg});
}
