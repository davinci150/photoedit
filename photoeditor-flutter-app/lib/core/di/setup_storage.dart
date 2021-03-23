import '../service/database/dao/user_dao.dart';
import 'service_locator.dart';

void setupStorage() {
  sl
    ..registerLazySingleton<UserDao>(
      () => UserDao(),
    );

  /* ..registerLazySingleton<MeasurementStorageI>(
      () => MeasurementStorage(),
    )
    ..registerLazySingleton<PreferencesStorageI>(
      () => PreferencesStorage(),
    )
    ..registerLazySingleton<DocumentStorageI>(
      () => DocumentStorage(),
    );*/
}
