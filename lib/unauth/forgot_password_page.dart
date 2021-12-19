import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/common/http_service.dart';
import 'package:flutter_application_1/common/loading_indicator_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'confirm_otp_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
   bool _isLoading = false;
  var errorMsg;
  TextEditingController usernameController = TextEditingController(text: '');

  forgotpasswordServiceCall() async {
     LoadingIndicatorDialog().show(context);
    print('forgotpasswordServiceCall');
    var username = usernameController.text;
    var data = {};

    try{
      var response;
      var jsonResponse;
      var url = Constant.BASE_URL+Constant.END_POINT_FORGOT_PASSWORD+"?&username="+username;
      response = await CustomHttpService.post(url, json.encode(data));
      LoadingIndicatorDialog().dismiss();
      if(response!=null){
          setState(() {
                  _isLoading = false;
                });
          if(response.statusCode == 200) {
            if(response.body.toString().contains("errormsg")){
               jsonResponse = json.decode(response.body);
               if(jsonResponse != null) {
                 Fluttertoast.showToast(msg: jsonResponse['errormsg'],toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
                 print("Rest error: ${jsonResponse} ");
               }
            }else{
                jsonResponse = json.decode(response.body);
                print('jsonResponse ::: ${jsonResponse}');
                if(jsonResponse != null) {
                  Fluttertoast.showToast(msg: "Otp sent",toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => ConfirmOtpPage()), (Route<dynamic> route) => false);
                }
            }
          }else{
            Fluttertoast.showToast(msg: response.statusCode+" "+response.body,toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
          }
      }else{
        print('res is null');
        Fluttertoast.showToast(msg: "Response is null",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
      }
    }catch(e){
      print('print error $e');
      Fluttertoast.showToast(msg: e.toString() ,toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
    }
  }


  @override
  Widget build(BuildContext context) {
      Widget title = const Padding(
        padding: EdgeInsets.only(top: 56.0),
        child: Text('Forgot your password?',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            )
        )
    );

    Widget subTitle = const Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Text(
          'Enter your registered username to get the OTP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        )
    );

    Widget sendButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          final form = formKey.currentState;
          form!.save();
          if (form.validate()) {
                forgotpasswordServiceCall();
              }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: 40,
          child: const Center(
              child:  Text("Send OTP",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
        ),
      ),
    );

    Widget phoneForm = SizedBox(
      height: 210,
      child: Stack(
        children: <Widget>[
          Form(
              key: formKey,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 32.0, right: 12.0,bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextField(
                        controller: usernameController,
                        style: TextStyle(fontSize: 16.0),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          sendButton,
        ],
      ),
    );

    Widget resendAgainText = Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Didn't receive the OPT? ",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Resend again',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ));

    return Scaffold(
       appBar: AppBar(
        title: const Text('Wedibuddy')
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: ListView(
              children: <Widget>[
                Spacer(flex: 3),
                title,
                Spacer(),
                subTitle,
                Spacer(flex: 2),
                phoneForm,
                Spacer(flex: 2),
              //  resendAgainText
              ],
            ),
          ),
        ]
      ),
    );
  }
}


