import 'package:get_it/get_it.dart';

import '../blocs/blocs.dart';

class BlocDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<HomeCubit>(() => HomeCubit());
  }
}
