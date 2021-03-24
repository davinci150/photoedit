// ignore: one_member_abstracts
abstract class EnvironmentConfigProviderI {
  EnvironmentConfig getConfig();
}

class EnvironmentConfig {
  String appName =
      // ignore: do_not_use_environment
      const String.fromEnvironment('APP_NAME', defaultValue: 'awesomeApp');
  String appSuffix =
      // ignore: do_not_use_environment
      const String.fromEnvironment('APP_SUFFIX').replaceAll('.', '');
}
