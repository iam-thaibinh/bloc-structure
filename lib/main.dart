import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'dependencies/dependencies.dart';
import 'enums.dart';
import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.instance.loadConfig(env: Environment.dev);
  await AppDependencies.setup();
  runApp(App());
}
