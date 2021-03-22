import '../service/database/dao/user_dao.dart';
import 'service_locator.dart';

void setupRepository() {
  sl..registerLazySingleton<UserDao>(() => UserDao());
}
