// ignore: one_member_abstracts
abstract class EnvironmentConfigProviderI {
  EnvironmentConfig getConfig();
}

class EnvironmentConfig {
  String appName =
      const String.fromEnvironment('APP_NAME', defaultValue: 'awesomeApp');
  String appSuffix =
      const String.fromEnvironment('APP_SUFFIX').replaceAll('.', '');
}
