import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/terminal.dart' as tty;

import 'package:flutter/widgets.dart';

const bool verbose = false;

//---------------------------------------------------------------------------
void main () {
  print( '\nWelcome!' );
   tty.rst();
  tty.cls();
  tty.boldOn();
  stdout.write( 'enter move from r c: or enter u/undo for undo the last move' );  //instead of print; not follow by newline
  tty.boldOff();
  String? ln = stdin.readLineSync();
  if (ln != null) {
    ln = ln.toLowerCase();
  }
  if (ln == 'quit' || ln == 'exit' || ln == 'bye' || ln == 'q' || ln == 'x') {
    print( 'Bye.' );
    return;
  }

  Codec<String, String> stringToBase64 = utf8.fuse(base64);
  String encoded = stringToBase64.encode("admin");
  print('encoded :: ${encoded} '); 
}

 void postUsingDio() async {
       var data = {
          "userid":"piyush@p.com",
          "password":"admin"
       };

       var dio = Dio();
        dio.options.baseUrl = Constant.BASE_URL;
        dio.options.connectTimeout = Constant.CONNECTION_TIME_OUT; //5s
        dio.options.receiveTimeout = Constant.SERVICE_TIME_OUT;
        dio.options.headers = {'user-agent': 'dio'};
        dio.options.headers = {'Accept': 'application/json'};
        dio.options.headers = {'Content-Type': 'application/json'};

        var loginUrl = Constant.BASE_URL+Constant.END_POINT_LOGIN_MOBILE;

        Response response = await dio.post(Constant.END_POINT_LOGIN_MOBILE, data: json.encode(data));

}

//---------------------------------------------------------------------------
