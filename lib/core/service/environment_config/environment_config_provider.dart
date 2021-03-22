import 'environment_config_provider_i.dart';

class EnvironmentConfigProvider implements EnvironmentConfigProviderI {
  @override
  EnvironmentConfig getConfig() {
    return EnvironmentConfig();
  }
}
