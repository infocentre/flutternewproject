import 'package:get_it/get_it.dart';
import 'package:temp/core/services/api.dart';
import 'package:temp/core/services/authentication_service.dart';
import 'package:temp/core/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;

//서비스를 레지스터 함
void setupLocator() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());
}
