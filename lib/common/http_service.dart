import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/common/conection_detecter.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:http/http.dart' as http;

class CustomHttpService{

static Future<Response?> postUsingDio(var url, var data) async {
  try{
      print('Entry2 inside @class CustomHttpService @method postUsingDio @response: ');
      var response=null;
       var dio = new Dio();
        dio.options.baseUrl = Constant.BASE_URL;
        dio.options.connectTimeout = Constant.CONNECTION_TIME_OUT; //5s
        dio.options.receiveTimeout = Constant.SERVICE_TIME_OUT;
//        dio.options.headers = {'User-Agent': 'dio'};
//        dio.options.headers = {'Accept': 'application/json'};
//        dio.options.headers = {'Access-Control_Allow_Origin': '*'};
//        dio.options.headers = {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'};

        FormData formData = FormData.fromMap(data);
         response = await dio.post(Constant.END_POINT_LOGIN_MOBILE, data: formData);
        //var url1 = Uri.parse(Constant.END_POINT_LOGIN_MOBILE1+"?&username=piyush@p.com&password=admin");
        // response = await dio.get(url1.toString());
          print('@class CustomHttpService @method postUsingDio @response: ${response}');
            
        return response;
  }on DioError catch (e) {
    print('Error occursed inside @class CustomHttpService @method postUsingDio @param : ${ e.toString()}');
  // The request was made and the server responded with a status code
  // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      print(e.response!.data);
      print(e.response!.headers);
      print(e.response!.requestOptions);
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      print(e.requestOptions);
      print(e.message);
    }
  }
}

static Future<http.Response> postForLogin(var url, var data)  async {
    var response;
    try{
      print('Entry1 inside @class CustomHttpService @method post @response: ');
      bool isConnected =  await ConectionDetecter.isConnected();
//      print('@class CustomHttpService @post @isConnected: ${isConnected}');
      if(isConnected){
        Map<String, String> requestHeaders = {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '<Your token>'
     };
        var parseUrl = Uri.parse(url);
        response = await http.post(parseUrl,body: data);
      }else{
        throw Exception("Not connected with internet");
      }
    } on HttpException catch(e){
     // print('Error occursed inside @class CustomHttpService @method post @param : ${e.toString()}');
       e.toString();
      print('Error occursed inside @class CustomHttpService @method post @param : ${e}');
      //rethrow;
      
    }
    return response;
  }

  static Future<http.Response> post(var url, var data)  async {
    var response;
    try{
      print('Entry inside @class CustomHttpService @method post @response: ');
      bool isConnected =  await ConectionDetecter.isConnected();
//      print('@class CustomHttpService @post @isConnected: ${isConnected}');
      if(isConnected){
        Map<String, String> requestHeaders = {
       'Content-type': 'application/json',
       'Accept': 'application/json',
//       'Authorization': '<Your token>'
     };
        var parseUrl = Uri.parse(url);
        response = await http.post(parseUrl,headers:requestHeaders,body: json.encode(data));
      }else{
        throw Exception("Not connected with internet");
      }
    } on HttpException catch(e){
     // print('Error occursed inside @class CustomHttpService @method post @param : ${e.toString()}');
       e.toString();
      print('Error occursed inside @class CustomHttpService @method post @param : ${e}');
      //rethrow;
      
    }
    return response;
  }

   static Future<http.Response> get(var url)  async {
    var response;
    try{
      print('Entry inside @class CustomHttpService @method get @response: ');
      bool isConnected =  await ConectionDetecter.isConnected();
//      print('@class CustomHttpService @post @isConnected: ${isConnected}');
      if(isConnected){
        Map<String, String> requestHeaders = {
       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': '<Your token>'
     };
        var parseUrl = Uri.parse(url);
        response = await http.get(parseUrl,headers:requestHeaders);
      }else{
        throw Exception("Not connected with internet");
      }
    } on HttpException catch(e){
     // print('Error occursed inside @class CustomHttpService @method post @param : ${e.toString()}');
       e.toString();
      print('Error occursed inside @class CustomHttpService @method get @param : ${e}');
      //rethrow;
      
    }
    return response;
  }

//   static Future<HttpRequest?> postFormData(String url, Map<String, String> data) async{
//     try{
//       var parts = [];
//       data.forEach((key, value) {
//         parts.add('${Uri.encodeQueryComponent(key)}='
//             '${Uri.encodeQueryComponent(value)}');
//       });
//       for(int i=0;i<parts.length;i++){
//           print('parts::: ${i} ----- ${parts[i]}');
//       }
//       var formData = parts.join('&');
//       print('formData:::  ${formData}');
//       var requestHeaders = <String, String>{};

//       requestHeaders.putIfAbsent('Content-Type', () => 'application/x-www-form-urlencoded; charset=UTF-8');

//       var response = HttpRequest.postFormData(url, data,requestHeaders:requestHeaders);
//       return response;
//     }catch(e){
//      // print('Error occursed inside @class CustomHttpService @method post @param : ${e.toString()}');
//       print('Error1 occursed inside @class CustomHttpService @method postFormData @param : ${e}');
// //      rethrow;
//       return null;
//     }
//   }


}
