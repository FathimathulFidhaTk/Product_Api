import 'package:flutter/cupertino.dart';
import 'package:product_api/model.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<List<TestingModel>> fetchproduct() async{
    var url = await http.get(Uri.parse("https://api.escuelajs.co/api/v1/categories"));
    if (url.statusCode == 200) {
      var data = url.body;
      return TestingModelFromJson(data);
    } else {
      throw Exception();
    }
  }

}