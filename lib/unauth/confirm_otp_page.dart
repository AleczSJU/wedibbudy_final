import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/common/http_service.dart';
import 'package:flutter_application_1/common/loading_indicator_dialog.dart';
import 'package:flutter_application_1/common/message_constant.dart';
import 'package:flutter_application_1/common/validation_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConfirmOtpPage extends StatefulWidget {
  @override
  _ConfirmOtpPageState createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController otpController = TextEditingController(text: '');
  final formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  var errorMsg;

  verifyServiceCall() async {
    LoadingIndicatorDialog().show(context);
    print('forgotpasswordServiceCall');
    var username = usernameController.text;
    var code = otpController.text;
    try{
      var response;
      var jsonResponse;
      var url = Constant.BASE_URL+Constant.END_POINT_RESET_BY_USERID_AND_CODE+"?&username="+username+"&code="+code;
      response = await CustomHttpService.get(url);
      LoadingIndicatorDialog().dismiss();
      if(response!=null){
          setState(() {
                  _isLoading = false;
                });
          if(response.statusCode == 200) {
            if(response.body.toString().contains("error")){
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
                  Fluttertoast.showToast(msg: "User created ",toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1,
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
        child: Text('Confirm your OTP',
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
          'Please wait for otp confirmation',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        )
    );

    Widget verifyButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          final form = formKey.currentState;
          form!.save();
          if (form.validate()) {
                verifyServiceCall();
              }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: 40,
          child: const Center(
              child:  Text("Verify",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
        ),
      ),
    );

    Widget otpCodeForm = SizedBox(
      height: 210,
      child: Form(
            key: formKey,
      child: Column(
        children: <Widget>[
             TextFormField(
                keyboardType: TextInputType.text,
                controller: usernameController,
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
                        10.0, 10.0, 10.0, 10.0),
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
                controller: otpController,
                textInputAction: TextInputAction.next,
//                validator: (val) => val!.trim(),
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
                        10.0, 10.0, 10.0, 10.0),
                    )
                  ),
                  labelText: "Code",
                  counterText: "",
                  labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: "customRegular"),
                ),
              ),
          ],
        ),
      ),
    );

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
                otpCodeForm,
                Spacer(flex: 2),
                verifyButton,
              //  resendAgainText
              ],
            ),
          ),
        ]
      ),
    );
  }
}
