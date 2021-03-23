/*
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:sentry/sentry.dart';

import '../build_info_provider/build_info_provider.dart';
import '../environment_config/environment_config_provider_i.dart';

class CrashReport implements CrashReportI {
  BuildInfoProviderI buildInfoProvider;

  EnvironmentConfigProviderI environmentConfigProviderI;

  CrashReport(
      {@required this.buildInfoProvider,
      @required this.environmentConfigProviderI});

  @override
  Future<void> init(String sentryConfig) async {
    await Sentry.init((options) {
      options.dsn = sentryConfig;
      // ignore: cascade_invocations
      options.environment = environmentConfigProviderI.getConfig().appSuffix;
    });
    final Map<String, dynamic> info = await buildInfoProvider.getDeviceInfo();

    Sentry.addBreadcrumb(
      Breadcrumb(
        //message: 'Authenticated user',
        //category: 'auth',
        //type: 'debug',
        data: info,
      ),
    );

    Sentry.configureScope((scope) async {
      scope
            */
/*  ..user = const User(
          id: '800',
          username: 'first-user',
          email: 'first@user.lan',
          ipAddress: '127.0.0.1',
          extras: <String, String>{'first-sign-in': '2020-01-01'},
        )*//*

            //..fingerprint = ['example-dart']
            //..transaction = '/example/app'
            ..level = SentryLevel.warning
          //..setTag('build', '579')
          //..setExtra('company-name', 'Dart Inc')
          ;

      info.entries.map((e) {
        scope.setContexts(e.key, e.value);
      });
    });
    await Firebase.initializeApp();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }

  @override
  Future<void> report({dynamic error, dynamic stackTrace}) async {
    await Sentry.captureException(
      error,
      stackTrace: stackTrace,
    );

    await FirebaseCrashlytics.instance
        .recordError(error, stackTrace as StackTrace);
  }
}

abstract class CrashReportI {
  Future<void> init(String sentryConfig);

  Future<void> report({@required dynamic error, dynamic stackTrace});
}
*/
