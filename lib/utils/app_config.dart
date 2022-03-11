import 'package:global_configuration/global_configuration.dart';

import '../enums.dart';

class AppConfig {
  GlobalConfiguration get globalConfiguration => GlobalConfiguration();

  static AppConfig _singleton = AppConfig._internal();

  static AppConfig get instance => _singleton;

  AppConfig._internal();

  Future loadConfig({Environment env = Environment.dev}) async {
    var appEnv = env.value;
    await GlobalConfiguration().loadFromAsset('app_config_$appEnv');
  }

  String get baseUrl => globalConfiguration.get('baseUrl');

  String get clientId => globalConfiguration.get('clientId');

  String get clientSecret => globalConfiguration.get('clientSecret');

  String get scope => globalConfiguration.get('scope');

  int get connectTimeout => globalConfiguration.getValue<int>('connectTimeout');

  String get micro => globalConfiguration.get('365');

  String get authUrl => globalConfiguration.get('authUrl');

  String get redUrl => globalConfiguration.get('redUrl');

  String fcmToken = '';

  String serviceCenterCode = '';
}
