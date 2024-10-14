

import 'package:flutter_clean_architecture/core/errors/error_codes.dart';
import 'package:flutter_clean_architecture/core/errors/exceptions/app_exceptions.dart';

///get data exception
class FetchDataException extends AppException {
  ///constructor
  FetchDataException(String? message, {String? super.details})
      : super(
          code: ErrorCode.ERR_NETWORK_ERROR,
          message: message ?? 'Error During Communication',
        );

  factory FetchDataException.networkException() {
    return FetchDataException(
      'No Internet connection please check your network',
    );
  }
}

///get data exception
class ServerErrorException extends AppException {
  ///constructor
  ServerErrorException(String? message, {String? super.details})
      : super(
    code: ErrorCode.ERR_NETWORK_ERROR,
    message: message ?? 'Error During Communication',
  );

  factory ServerErrorException.networkException() {
    return ServerErrorException(
      'Some thing happened with server',
    );
  }
}


///Invalid input exception
class InvalidInputException extends AppException {
  ///constructor
  InvalidInputException(String? details)
      : super(
          code: 'invalid-input',
          message: 'Invalid Input',
          details: details,
        );
}

///Authentication exception
class AuthenticationException extends AppException {
  ///constructor
  AuthenticationException(String? details)
      : super(
          code: 'authentication-failed',
          message: 'Authentication Failed',
          details: details,
        );
}

///Timeout exception
class TimeOutException extends AppException {
  ///constructor
  TimeOutException(String? details)
      : super(
          code: 'request-timeout',
          message: 'Request TimeOut',
          details: details,
        );
}
