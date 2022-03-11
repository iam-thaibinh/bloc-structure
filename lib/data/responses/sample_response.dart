import 'dart:convert';


Map<String, dynamic> _getMap(dynamic data) {
  if (data is Map) return data as Map<String, dynamic>;
  return json.decode(data.toString()) as Map<String, dynamic>;
}

class SampleResultResponse<T> {
  List<T> items;

  SampleResultResponse({this.items});

  SampleResultResponse.fromJson(Map<String, dynamic> json) {
        items = (json['items'] as List)?.map((item) => (T as SampleResponse).fromJson(item))?.toList() ?? [];
  }
}

class SampleResponse{
  final String id;
  final String productName;
  final String image;
  final String description;
  final String regularPrice;
  final String salePrice;

  SampleResponse({
    this.id,
    this.productName,
    this.image,
    this.description,
    this.regularPrice,
    this.salePrice,
  });


  fromJson(Map<String, dynamic> json) {
    return SampleResponse(
      id: json['id'],
      productName: json['productName'],
      image: json['image'] is bool ? '' : json['image'],
      description: json['description'],
      regularPrice: json['regularPrice'],
      salePrice: json['salePrice'],
    );
  }
}
