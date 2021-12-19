
import 'dart:convert';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/constant.dart';
import 'package:flutter_application_1/common/http_service.dart';
import 'package:flutter_application_1/common/loading_indicator_dialog.dart';
import 'package:flutter_application_1/common/message_constant.dart';
import 'package:flutter_application_1/common/validation_widget.dart';
import 'package:flutter_application_1/enum/gender_enum.dart';
import 'package:flutter_application_1/unauth/confirm_otp_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isValid = true;
  int dateOfBirth = 0;
  TextEditingController firstNameController = TextEditingController(text: '');
  TextEditingController lastNameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController mobileNumController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController dobController = TextEditingController(text: DateTime.now().toString());
  TextEditingController genderController = TextEditingController(text: '');

  final formKey = GlobalKey<FormState>();
  late DateTime pickedDate;

  bool _isLoading = false;
  var errorMsg;
  GenderEnum? _genderEnum = GenderEnum.Male;
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';

  registerServiceCall() async {
    LoadingIndicatorDialog().show(context);
    
    var firstname = firstNameController.text;
    var lastname = lastNameController.text;
    var email = emailController.text;
    var mobileNum = mobileNumController.text;
    var password = passwordController.text;
    var dob = dobController.text;
    var gender='';
    if(_genderEnum==GenderEnum.Male){
      gender='Male';
    }else if(_genderEnum==GenderEnum.Female){
      gender='Female';
    }
  print('_valueChanged1_valueChanged1_valueChanged1_valueChanged1 ${_valueChanged1}');
  
    var data = {
          "firstname":firstname,
          "lastname":lastname,
          "username":email,
          "contactno":mobileNum,
          "checkSum":base64.encode(utf8.encode(password)),
          "dob":_valueChanged1,
          "gender":gender,
          "domainId": "1"
       };

    try{
      var response;
      var jsonResponse;
      var url = Constant.BASE_URL+Constant.END_POINT_REGISTRATION;
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
    
    Widget title = Padding(
      padding: const EdgeInsets.only(top: 56.0),
      child: Text('Create an account',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              )
            ),
    );

    // Widget subTitle = Padding(
    //     padding: const EdgeInsets.only(right: 56.0),
    //     child: Text(
    //       'Create your new account for future uses.',
    //       style: TextStyle(
    //         color: Colors.white,
    //         fontSize: 16.0,
    //       ),
    //     ));

    Widget registerButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          final form = formKey.currentState;
          form!.save();
          if (form.validate()) {
              registerServiceCall();
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: 40,
          child: const Center(
              child: Text("Sign up",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0)
                  )
            ),
        ),
      ),
    );

    Widget registerForm = Container(
      child: Column(
        children: <Widget>[
          Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 32.0, right: 12.0),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        signupWidgetFirstname(),
                        signupWidgetLastname(),
                        signupWidgetEmailid(),
                        signupWidgetMobileNo(),
                        signupWidgetPassword(),
                        signupWidgetDOB(context),
                        signupWidgetGender()
                       
                      ],
                    ),
                  ))),
          Padding(
              padding: const EdgeInsets.only(top: 25.0), child: registerButton),
        ],
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
//                subTitle,
                Spacer(flex: 2),
                //welcomeBack,
                //Spacer(),
                registerForm,
                Spacer(flex: 4),
              ],
            ),
          ),
          // Positioned(
          //   top: 40,
          //   left: 5,
          //   child: IconButton(
          //     color: Colors.blue,
          //     icon: Icon(Icons.arrow_back),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // )
        ]
      ),
    );
  }

  Column signupWidgetGender() {
    return Column(
                        children: [
                          ListTile(
                            
                              title: const Text('Male'),
                              leading: Radio<GenderEnum>(
                                value: GenderEnum.Male,
                                groupValue: _genderEnum,
                                onChanged: (GenderEnum? value) {
                                  setState(() {
                                    _genderEnum = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text('Female'),
                              leading: Radio<GenderEnum>(
                                value: GenderEnum.Female,
                                groupValue: _genderEnum,
                                onChanged: (GenderEnum? value) {
                                  setState(() {
                                    _genderEnum = value;
                                  });
                                },
                              ),
                            ),
                        ],
                      );
  }

  TextFormField signupWidgetFirstname() {
    return TextFormField(
                        keyboardType: TextInputType.text,
                        controller: firstNameController,
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.sentences,
                        validator: (val) => val!.trim().isEmpty ? MessageConstant.ENTER_FIRST_NAME_VAL : null,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          suffixIcon: GestureDetector(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 0.0),
                            
                          )),
                          labelText: "First Name",
                          counterText: "",
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "customRegular"),
                        ),
                      );
  }
  TextFormField signupWidgetLastname() {
    return TextFormField(
                        keyboardType: TextInputType.text,
                        controller: lastNameController,
                        textInputAction: TextInputAction.next,
                        validator: (val) => val!.trim().isEmpty
                            ? MessageConstant.ENTER_LAST_NAME_VAL
                            : null,
                        textCapitalization: TextCapitalization.sentences,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          suffixIcon: GestureDetector(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 0.0),
                            
                          )),
                          labelText: "Last Name",
                          counterText: "",
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "customRegular"),
                        ),
                      );
  }
  TextFormField signupWidgetEmailid() {
    return TextFormField(
                        keyboardType: TextInputType.text,
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        validator: (val) => val!.trim().isEmpty
                            ? MessageConstant.ENTER_EMAIL_VAL
                            : !ValidationWidget.isEmail(val)
                                ? MessageConstant.VALID_EMAIL_VAL
                                : null,
                        textCapitalization: TextCapitalization.sentences,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          suffixIcon: GestureDetector(
                              child: const Padding(
                            padding: EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 0.0),
                            
                          )),
                          labelText: "Email",
                          counterText: "",
                          labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: "customRegular"),
                        ),
                      );
  }


  TextFormField signupWidgetMobileNo() {
    return TextFormField(
                        keyboardType: TextInputType.text,
                        controller: mobileNumController,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          return ValidationWidget.isphone(value!)
                              ? null
                              : MessageConstant.ENTER_PHONE_NUMBER_VAL;
                        },
                        textCapitalization: TextCapitalization.sentences,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          suffixIcon: GestureDetector(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 0.0),
                            
                          )),
                          labelText: "Mobile Number",
                          counterText: "",
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "customRegular"),
                        ),
                      );
  }


  TextFormField signupWidgetPassword() {
    return TextFormField(
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.sentences,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          suffixIcon: GestureDetector(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 0.0),
                           
                          )),
                          labelText: "Password",
                          counterText: "",
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "customRegular"),
                        ),
                      );
  }

    // selectDob(BuildContext context) {
    //   DateTimePicker(
    //     type: DateTimePickerType.dateTimeSeparate,
    //     dateMask: 'd MMM, yyyy',
    //     initialValue: DateTime.now().toString(),
    //     firstDate: DateTime(2000),
    //     lastDate: DateTime(2100),
    //     icon: Icon(Icons.event),
    //     dateLabelText: 'Date',
    //     timeLabelText: "Hour",
    //     selectableDayPredicate: (date) {
    //       // Disable weekend days to select from the calendar
    //       if (date.weekday == 6 || date.weekday == 7) {
    //         return false;
    //       }

    //       return true;
    //     },
    //     onChanged: (val) => print(val),
    //     validator: (val) {
    //       print(val);
    //       return null;
    //     },
    //     onSaved: (val) => print(val),
    //   );
    // }


  InkWell signupWidgetDOB(BuildContext context) {
    return InkWell(
            child: Column(
               children: <Widget>[ DateTimePicker(
                  type: DateTimePickerType.dateTime,
                  dateMask: 'd MMMM, yyyy hh:mm a',
               //   controller: dobController,
                  initialValue: DateTime(2001).toString(),
                  firstDate: DateTime(1956),
                  lastDate: DateTime(2003),
                  icon: const Icon(Icons.event),
                  dateLabelText: 'Date',
                  timeLabelText: "Hour",
                  //use24HourFormat: false,
                  selectableDayPredicate: (date) {
                    // Disable weekend days to select from the calendar
                    if (date.weekday == 6 || date.weekday == 7) {
                      return false;
                    }
                    return true;
                  },
                  onChanged: (val) => setState(() {
                    final DateTime now = DateTime.parse(val);
                   _valueChanged1 = now.toIso8601String();
                   print('_valueChanged1 : ${_valueChanged1}');
                    //  final DateFormat formatter = DateFormat('yyyy-MM-dd\'T\'HH:mm:ss.SSSZ');
                    //  _valueChanged1 = formatter.format(now);
                    // print('_valueChanged2:: ${_valueChanged1}');
                  }),
                  validator: (val) {
                  setState(() => _valueToValidate1 = val ?? '');
                  return null;
                  
                },
                onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
                ),
              ],   
            ),
    );
  }

}
