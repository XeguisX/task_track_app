import 'package:task_track_app/shared/utils/result.dart';

sealed class TransactionState<T> {
  const TransactionState();
}

class InitialTransaction<T> extends TransactionState<T> {
  const InitialTransaction();
}

class SuccessTransaction<T> extends TransactionState<T> {
  const SuccessTransaction([this.data]);

  final T? data;
}

class LoadingTransaction<T> extends TransactionState<T> {
  const LoadingTransaction();
}

class FailureTransaction<T> extends TransactionState<T> {
  const FailureTransaction(this.failure);

  final Failure failure;
}
