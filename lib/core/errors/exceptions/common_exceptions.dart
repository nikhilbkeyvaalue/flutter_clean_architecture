import 'package:flutter_clean_architecture/core/errors/exceptions/app_exceptions.dart';

class ValidationException extends AppException {
  ValidationException({required super.message});
}

///not i
class NotImplementedException extends AppException {
  ///constructor
  NotImplementedException() : super();
}
