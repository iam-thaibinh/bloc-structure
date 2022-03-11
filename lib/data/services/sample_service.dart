import 'dart:async';

import 'package:dio/dio.dart';

import '../responses/response.dart';

import 'interfaces/interfaces.dart';

class SampleService implements ISampleService {
  Dio _rest;

  SampleService() {
   _rest = Dio();
  }

  @override
  Future<SampleResultResponse<SampleResponse>> fetchProduct() async {
    return null;
  }
}
