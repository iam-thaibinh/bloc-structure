import '../data.dart';
import '../responses/response.dart';
import 'interfaces/sample_business.dart';

class SampleBusiness implements ISampleBusiness {
  final ISampleService _service;

  SampleBusiness(this._service);

  @override
  Future<SampleResultResponse<SampleResponse>> fetchProduct() async {
    return null;
  }
}
