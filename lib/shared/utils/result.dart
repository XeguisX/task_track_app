import 'package:flutter/foundation.dart';

abstract class Failure {
  const Failure([this.message = 'Vuelvelo a intentar más tarde']);

  final String message;
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message]);
}

@immutable
abstract class Result<T> {
  const factory Result.success(T data) = _ResultSuccess<T>;
  const factory Result.failure(Failure failure) = _ResultFailure<T>;

  R when<R>({
    required R Function(T) success,
    required R Function(Failure) failure,
  });
}

class _ResultSuccess<T> implements Result<T> {
  const _ResultSuccess(this.data);

  final T data;

  @override
  R when<R>({
    required R Function(T) success,
    required R Function(Failure) failure,
  }) =>
      success(data);
}

class _ResultFailure<T> implements Result<T> {
  const _ResultFailure(this.failure);

  final Failure failure;

  @override
  R when<R>({
    required R Function(T) success,
    required R Function(Failure) failure,
  }) =>
      failure(this.failure);
}

sealed class ResultSealed<T> {}

class ResultSealedSuccess<T> extends ResultSealed<T> {
  ResultSealedSuccess(this.data);

  final T data;
}

class ResultSealedFailure<T> extends ResultSealed<T> {
  ResultSealedFailure(this.failure);

  final Failure failure;
}
