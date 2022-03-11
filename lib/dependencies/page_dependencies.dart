import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../router/router.dart';
import '../pages/pages.dart';

class PageDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<Widget>(() => HomePage(injector()), instanceName: Routes.home);
  }
}
