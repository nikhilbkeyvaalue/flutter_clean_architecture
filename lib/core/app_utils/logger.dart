import 'package:logger/logger.dart';

Logger appLogger = Logger(
  printer: PrefixPrinter(
    PrettyPrinter(
      methodCount: 1,
      // Number of method calls to be displayed
      errorMethodCount: 10,
      printTime: true,
      noBoxingByDefault: true,
      // Number of method calls if stacktrace is provided
      lineLength: 1000,
    ),
  ),
);

Logger appLogger2 = Logger(
  printer: PrefixPrinter(
    PrettyPrinter(
      methodCount: 1,
      noBoxingByDefault: true,

      // Number of method calls to be displayed
      errorMethodCount: 10,
      printTime: true,

      // Number of method calls if stacktrace is provided
      lineLength: 3000,
    ),
  ),
);
