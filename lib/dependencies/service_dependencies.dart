import '../data/data.dart';
import 'package:get_it/get_it.dart';

class ServiceDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<ISampleService>(() => SampleService());
  }
}
