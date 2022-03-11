import 'package:get_it/get_it.dart';

import 'dependencies.dart';

class AppDependencies {
  static GetIt get _injector => GetIt.I;

  static Future<void> setup() async {
    await ResponseDependencies.setup(_injector);
    await ServiceDependencies.setup(_injector);
    await BusinessDependencies.setup(_injector);
    await BlocDependencies.setup(_injector);
    await PageDependencies.setup(_injector);
  }
}
