import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

import '../context_provider/context_provider_i.dart';

class BuildInfoProvider implements BuildInfoProviderI {

  BuildInfoProvider({@required this.contextProvider});

  ContextProviderI contextProvider;

  @override
  Future<BuildInfoModel> getBuildInfo() async {
    final PackageInfo _info = await PackageInfo.fromPlatform();
    return BuildInfoModel(
      appName: _info.appName,
      version: _info.version,
      buildNumber: _info.buildNumber,
      packageName: _info.packageName,
    );
  }

  @override
  Future<Map<String, dynamic>> getDeviceInfo() async {
    final BuildInfoModel buildInfoModel = await getBuildInfo();
    final Map<String, dynamic> platformState = await initPlatformState();
    platformState['app.name'] = buildInfoModel.appName;
    platformState['app.version'] = buildInfoModel.version;
    platformState['app.build_number'] = buildInfoModel.buildNumber;
    platformState['app.package_name'] = buildInfoModel.packageName;
    return platformState;
  }

  @override
  Future<DeviceInfoModel> getBaseDeviceInfo() async {
    DeviceInfoModel deviceInfoModel;
    final PackageInfo _info = await PackageInfo.fromPlatform();
    //final String locale = Platform.localeName;
    final String locale =
        Localizations.localeOf(contextProvider.getBuildContext()).languageCode;

    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo deviceInfo = await deviceInfoPlugin.androidInfo;
        deviceInfoModel = DeviceInfoModel(
            locale: locale,
            model: deviceInfo.model ?? '',
            platformVersion: deviceInfo.version.release ?? '',
            buildNumber: _info.buildNumber ?? '',
            modelVersion: deviceInfo.model ?? '',
            platform: 'android',
            make: deviceInfo.manufacturer);
      } else if (Platform.isIOS) {
        final IosDeviceInfo deviceInfo = await deviceInfoPlugin.iosInfo;
        deviceInfoModel = DeviceInfoModel(
            locale: locale,
            model: deviceInfo.model ?? '',
            modelVersion: deviceInfo.name ?? '',
            platformVersion: deviceInfo.systemVersion ?? '',
            buildNumber: _info.buildNumber ?? '',
            platform: 'ios',
            make: 'apple');
      }

      debugPrint('@@@ deviceInfoModel=>${deviceInfoModel.toString()}');
      // ignore: empty_catches
    } on PlatformException {}

    return deviceInfoModel;
  }

  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  Future<Map<String, dynamic>> initPlatformState() async {
    Map<String, dynamic> deviceData;
    try {
      if (Platform.isAndroid) {
        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }
    return deviceData;
  }
}

Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
  return <String, dynamic>{
    'version.securityPatch': build.version.securityPatch,
    'version.sdkInt': build.version.sdkInt,
    'version.release': build.version.release,
    'version.previewSdkInt': build.version.previewSdkInt,
    'version.incremental': build.version.incremental,
    'version.codename': build.version.codename,
    'version.baseOS': build.version.baseOS,
    'board': build.board,
    'bootloader': build.bootloader,
    'brand': build.brand,
    'device': build.device,
    'display': build.display,
    'fingerprint': build.fingerprint,
    'hardware': build.hardware,
    'host': build.host,
    'id': build.id,
    'manufacturer': build.manufacturer,
    'model': build.model,
    'product': build.product,
    'supported32BitAbis': build.supported32BitAbis,
    'supported64BitAbis': build.supported64BitAbis,
    'supportedAbis': build.supportedAbis,
    'tags': build.tags,
    'type': build.type,
    'isPhysicalDevice': build.isPhysicalDevice,
    'androidId': build.androidId,
    'systemFeatures': build.systemFeatures,
  };
}

Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
  return <String, dynamic>{
    'name': data.name,
    'systemName': data.systemName,
    'systemVersion': data.systemVersion,
    'model': data.model,
    'localizedModel': data.localizedModel,
    'identifierForVendor': data.identifierForVendor,
    'isPhysicalDevice': data.isPhysicalDevice,
    'utsname.sysname:': data.utsname.sysname,
    'utsname.nodename:': data.utsname.nodename,
    'utsname.release:': data.utsname.release,
    'utsname.version:': data.utsname.version,
    'utsname.machine:': data.utsname.machine,
  };
}

abstract class BuildInfoProviderI {
  Future<BuildInfoModel> getBuildInfo();

  Future<Map<String, dynamic>> getDeviceInfo();

  Future<DeviceInfoModel> getBaseDeviceInfo();
}

class BuildInfoModel {
  BuildInfoModel(
      {@required this.appName,
      @required this.packageName,
      @required this.version,
      @required this.buildNumber});

  final String appName;
  final String packageName;
  final String buildNumber;
  final String version;
}

class DeviceInfoModel {
  final String platform;
  final String platformVersion;
  final String modelVersion;
  final String model;
  final String make;
  final String buildNumber;

  final String locale;

  DeviceInfoModel(
      {@required this.locale,
      @required this.platform,
      @required this.model,
      @required this.make,
      @required this.modelVersion,
      @required this.platformVersion,
      @required this.buildNumber});

  @override
  String toString() {
    return 'DeviceInfoModel{platform: $platform, platformVersion: $platformVersion, modelVersion: $modelVersion, model: $model, make: $make, buildNumber: $buildNumber, locale: $locale}';
  }
}
