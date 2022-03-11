import '../../data.dart';

abstract class ISampleBusiness {
  Future<SampleResultResponse<SampleResponse>> fetchProduct();
}