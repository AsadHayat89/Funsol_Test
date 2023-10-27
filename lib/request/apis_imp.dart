
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../export.dart';
class ApiRequests {


  // Either are use for error handling in the Apis
  static Future<Either<AppFailed,GridItem>> getUrlData() async{
    GridItem g;
    final response = await http.get(Uri.parse(ApiConstants.getUrl()));
    if (response.statusCode == 200) {
      // Request was successful

     g=GridItem.fromJson(json.decode(response.body));
      return Right(g);
    } else {
      // Request failed
      Map<String,dynamic> apiResult=json.decode(response.body);
      return left(AppFailed(apiResult['meesage'], response.statusCode));
    }
  }
}
