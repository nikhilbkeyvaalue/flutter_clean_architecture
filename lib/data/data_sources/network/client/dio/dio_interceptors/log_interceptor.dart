import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Configuration for `PrettyDioLogger`, which is used to log HTTP requests and responses in Dio.
final prettyDioLogger = PrettyDioLogger(
    requestHeader: true,   // Enables logging of request headers.
    requestBody: true,     // Enables logging of request body.
    responseBody: true,    // Enables logging of response body.
    responseHeader: false, // Disables logging of response headers.
    error: true,           // Enables logging of errors.
    compact: true,         // Enables compact logging format.
    maxWidth: 90,          // Sets the maximum width of the log print output.
);
