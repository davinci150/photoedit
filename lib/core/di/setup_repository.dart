import '../service/database/dao/recent_pic_dao.dart';
import 'service_locator.dart';

void setupRepository() {
  sl..registerLazySingleton<RecentPicDaoI>(() => RecentPicDao());
}
