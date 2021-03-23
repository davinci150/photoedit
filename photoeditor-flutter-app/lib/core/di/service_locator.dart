import 'package:get_it/get_it.dart';

import 'setup_bloc.dart';
import 'setup_core.dart';
import 'setup_repository.dart';
import 'setup_storage.dart';

//service locator
GetIt sl = GetIt.instance;

T getIts<T>() => sl.get<T>();

void setupLocator() {
  setupBlock();

  setupCore();

  setupRepository();

  setupStorage();

  //--Example
  /*
  //Singleton
  sl.registerSingleton<ErrorHandler>(ErrorHandler(
      contextProvider: getIts<ContextProvider>(),
      magicLinkDao: getIts<MagicLinkDao>()));

  //LazySingleton
  sl.registerLazySingleton<AuthApi>(() => AuthApi(
      httpClient: getIts<HttpClientBase>(),
      magicLinkDao: getIts<MagicLinkDao>(),
      userDao: getIts<UserDao>()));

  //Factory
  sl.registerFactory<FormBloc>(
          () => FormBloc(formsApi: getIts<FormsApi>(), router: getIts<Router>()));*/
}
