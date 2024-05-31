import 'package:task_track_app/shared/utils/result.dart';

sealed class AsyncState<T> {
  const AsyncState();
}

class SuccessState<T> extends AsyncState<T> {
  SuccessState(this.data);

  final T data;
}

class LoadingState<T> extends AsyncState<T> {
  const LoadingState();
}

class FailureState<T> extends AsyncState<T> {
  FailureState(this.failure);

  final Failure failure;
}
