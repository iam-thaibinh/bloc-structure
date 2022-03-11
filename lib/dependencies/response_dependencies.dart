import '../data/data.dart';
import 'package:get_it/get_it.dart';

class ResponseDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<SampleResponse>(() => SampleResponse());
  }
}
