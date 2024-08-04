

class BaseError {}

/*
Common global errors
 */

class ConnectionError extends BaseError {}
class Forbidden extends BaseError {}
class UnauthorizedError extends BaseError {}
class NotFound extends BaseError {}
class UnknownError extends BaseError {}


/*
Generic result
 */

sealed class Result<D, E extends BaseError> {}


class Success<D, E extends BaseError> extends Result<D, E> {
  final D data;

  Success(this.data);
}

class Error<D, E extends BaseError> extends Result<D, E> {
  final E error;

  Error(this.error);
}
