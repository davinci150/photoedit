import '../service/build_info_provider/build_info_provider.dart';
import '../service/context_provider/context_provider.dart';
import '../service/context_provider/context_provider_i.dart';
import '../service/environment_config/environment_config_provider.dart';
import '../service/environment_config/environment_config_provider_i.dart';
import '../service/image_picker/image_picker.dart';
import '../service/router/router.dart';
import 'service_locator.dart';

void setupCore() {
  sl
    ..registerSingleton<EnvironmentConfigProviderI>(EnvironmentConfigProvider())
    ..registerSingleton<ContextProviderI>(ContextProvider())
    ..registerSingleton<BuildInfoProviderI>(
        BuildInfoProvider(contextProvider: getIts<ContextProviderI>()))
    ..registerLazySingleton<RouterI>(() => Router(
          contextProvider: getIts<ContextProviderI>(),
        ))
    ..registerLazySingleton<ImagePickerServiceI>(() => ImagePickerService());
}
