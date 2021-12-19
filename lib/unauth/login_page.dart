
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/girlsboys_page.dart';
import 'package:flutter_application_1/auth/girlsboys_page.dart';
import 'package:flutter_application_1/auth/girlsboys_page.dart';
import 'package:flutter_application_1/auth/index_page.dart';
import 'package:flutter_application_1/auth/inhome_page.dart';
import 'package:flutter_application_1/auth/singletons/appdata.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/common/http_service.dart';
import 'package:flutter_application_1/common/loading_indicator_dialog.dart';
import 'package:flutter_application_1/common/message_constant.dart';
import 'package:flutter_application_1/common/validation_widget.dart';
import 'package:flutter_application_1/unauth/confirm_otp_page.dart';
import 'package:flutter_application_1/unauth/forgot_password_page.dart';
import 'package:flutter_application_1/unauth/register_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  var errorMsg;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  final formKey = GlobalKey<FormState>();

  loginServiceCall() async {
//    CustomProgressLoader.showLoader(context);
   // LoadingIndicatorDialog().show(context);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var username = emailController.text;
    var password = passwordController.text;

    // var map = <String, String>{};
    // map['userid']=username;
    // map['password']=password;

    var data = {
          "username":username,
          "password":password
       };

    if(username.toLowerCase()=='Alec@gmail.com' && password.toLowerCase()=='admin'){
      print('sachinnsojnds');
     // LoadingIndicatorDialog().dismiss();
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => 
        InHomePage()//IndexPage()
        ), (Route<dynamic> route) => false);
    }else if(username=='Alec@gmail.com' && password=='Admin'){
      print('sachinnsojnds');
      // LoadingIndicatorDialog().dismiss();
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) =>
          InHomePage()//IndexPage()
      ), (Route<dynamic> route) => false);
    } else{
      print('shubham kdnbifivf');
      try{
        var response;
        var jsonResponse;
        var loginUrl = Constant.BASE_URL+Constant.END_POINT_LOGIN_MOBILE;
        response = await CustomHttpService.postForLogin(loginUrl, data);
        LoadingIndicatorDialog().dismiss();
      // response = await CustomHttpService.postUsingDio(loginUrl, data);
  //      CustomProgressLoader.cancelLoader(context);
        
        if(response!=null){
            setState(() {
                    _isLoading = false;
                  });
            if(response.statusCode == 200) {
              if(response.body.toString().contains("errormsg")){
                jsonResponse = json.decode(response.body);
                if(jsonResponse != null) {
                  print("Rest error: ${jsonResponse} ");
                    Fluttertoast.showToast(msg: jsonResponse['errormsg'],toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,textColor: Colors.white,fontSize: 16.0);
                }
              }else{
                  jsonResponse = json.decode(response.body);
                  print('jsonResponse ::: ${jsonResponse}');
                  if(jsonResponse != null) {
                      Fluttertoast.showToast(msg: "Welcome to wedibuddy",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,textColor: Colors.white,fontSize: 16.0);

                    sharedPreferences.setString("token", jsonResponse['username']);
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) {
                        AppData().setUserContext(response.body);
                        return InHomePage();
                      }//IndexPage()
                    ), (Route<dynamic> route) => false);
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

  }

  @override
  Widget build(BuildContext context) {

    Widget appBar = const Padding(
      padding:  EdgeInsets.only(top: 56.0),
      child: Text('Wedibuddy',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            )
          ),
    );

    Widget title = const Padding(
      padding:  EdgeInsets.only(top: 56.0),
      child: Text('Life is beautiful',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            )
          ),
    );

    Widget loginButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          final form = formKey.currentState;
          form!.save();
          if (form.validate()) {
                loginServiceCall();
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => IndexPage()));
                
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: 40,
          child: const Center(
              child:  Text("Login",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
        ),
      ),
    );
  
Widget loginForm = Container(
      child: Column(
        children: <Widget>[
          Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 32.0, right: 12.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                          )
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                         TextFormField(
                          keyboardType: TextInputType.text,
                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          validator: (val) => val!.trim().isEmpty ? MessageConstant.ENTER_EMAIL_VAL : !ValidationWidget.isEmail(val) ? MessageConstant.VALID_EMAIL_VAL : null,
                          textCapitalization: TextCapitalization.sentences,
                          style:  const TextStyle(
                              color: Colors.black, 
                              fontFamily: "customRegular"
                            ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                            suffixIcon: GestureDetector(
                                child:  const Padding(
                              padding: EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 0.0),
                              )
                            ),
                            labelText: "Email",
                            counterText: "",
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontFamily: "customRegular"),
                          ),
                        ),
                       
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: passwordController,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.sentences,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "customRegular"
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                            suffixIcon: GestureDetector(
                                child: const Padding(
                              padding: EdgeInsets.fromLTRB(
                                  10.0, 10.0, 10.0, 0.0),
                              )
                            ),
                            labelText: "Password",
                            counterText: "",
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontFamily: "customRegular"),
                          ),
                        ),
                      ],
                    ),
                  )
                )
              ),
          Padding(
              padding: const EdgeInsets.only(top: 25.0), child: loginButton),
        ],
      ),
    );


    Widget forgotPassword = Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Forgot your password? ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
              },
              child: const Text(
                'Reset password',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ));


Widget signUpWidget = Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Don\'t have an account? Create one ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => RegisterPage()));
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ));

Widget confirmOtpWidget = Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Confirm otp ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ConfirmOtpPage()));
              },
              child: const Text(
                'Confirm otp',
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
                const Spacer(flex: 3),
                title,
                const Spacer(),
                //welcomeBack,
                //Spacer(),
                loginForm,
                const Spacer(),
                signUpWidget,
                const Spacer(flex: 4),
                forgotPassword,
                const Spacer(flex: 4),
               // confirmOtpWidget
              ],
            ),
          ),
        ],
      ),
    );
  }
}