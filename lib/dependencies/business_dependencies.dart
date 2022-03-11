import '../data/data.dart';
import 'package:get_it/get_it.dart';

class BusinessDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<ISampleBusiness>(() => SampleBusiness(injector()));
  }
}
