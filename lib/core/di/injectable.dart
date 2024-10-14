import 'package:flutter_clean_architecture/core/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
configureInjection() async {
  getIt.init(environment: "app");
  await getIt.allReady();
}
