import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/common/color_values.dart';
import 'package:flutter_application_1/common/padding_wrap.dart';


class CustomProgressLoader {

 static showLoader(context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) =>  WillPopScope(
          onWillPop: () async{
               return false;
          },
          child:Center( // Aligns the container to center
            child: Container(
             // A simplified version of dialog.
              width: 30.0,
              height: 30.0,
              child: const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.black54
              ),strokeWidth: 2.0,)),
            )
        )
    );



  }

  static showLoaderWhite(context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
            onWillPop: () async{
               return false;
          },
            child:Center( // Aligns the container to center
              child: Container(
                // A simplified version of dialog.
                  width: 30.0,
                  height: 30.0,
                  child: const CircularProgressIndicator(
                    valueColor:
                    AlwaysStoppedAnimation(Colors.white),
                  )),
            )
        )
    );



  }

  static showLoader2(context) {
     showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) =>  WillPopScope(
         onWillPop: () async{
               return false;
          },
         child:Center( // Aligns the container to center
            child: Container(
              // A simplified version of dialog.
              width: 30.0,
              height: 30.0,
              child: const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.black54
              ),strokeWidth: 2.0,)),
            )
        )
    );



  }

  static cancelLoader(context) {
    if(context != null) {
      Navigator.of(context, rootNavigator: true).pop('dialog');
    }

  }

  static void showDialogBackDialog(context1) {


    showDialog(
        barrierDismissible: false,
        context: context1,
        builder: (_) => WillPopScope(
            // onWillPop: () {
            //   Navigator.pop(context1);
            // },
            onWillPop: () async{
               return false;
          },
            child: Scaffold(
                backgroundColor: Colors.black38,
                body: Stack(
                  children: <Widget>[
                    Positioned(
                        right: 0.0,
                        left: 0.0,
                        bottom: 40.0,
                        child: Container(
                            height: 193.0,
                            color: Colors.transparent,
                            child: Stack(
                              children: <Widget>[
                                PaddingWrap.paddingfromLTRB(
                                    13.0,
                                    20.0,
                                    13.0,
                                    0.0,
                                    ListView(children: <Widget>[
                                      Container(
                                        height: 145.0,
                                        padding: const EdgeInsets.all(10.0),
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                "Are you sure you want to exit?",
                                                textAlign: TextAlign.center,
                                                maxLines: 5,
                                                style: TextStyle(
                                                    color: Color(ColorValues
                                                        .HEADING_COLOR_EDUCATION),
                                                    height: 1.2,
                                                    fontSize: 16.0,
                                                    fontFamily:
                                                    "customRegular"),
                                              ),
                                            ]),
                                      )
                                    ])),
                              ],
                            ))),
                    Positioned(
                      right: 0.0,
                      left: 0.0,
                      bottom: 10.0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: PaddingWrap.paddingfromLTRB(
                            13.0,
                            0.0,
                            13.0,
                            0.0,
                            Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(10.0),
                                height: 51.0,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: InkWell(
                                        child: Container(
                                            child: Text(
                                              "Cancel",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(ColorValues
                                                      .GREY_TEXT_COLOR),
                                                  fontSize: 16.0,
                                                  fontFamily: 'customRegular'),
                                            )),
                                        onTap: () {
                                          Navigator.of(context1).pop();
                                        },
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        child: Container(
                                            child: const Text(
                                              "Done",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(ColorValues
                                                      .BLUE_COLOR_BOTTOMBAR),
                                                  fontSize: 16.0,
                                                  fontFamily: 'customRegular'),
                                            )),
                                        onTap: () {
                                          Navigator.of(context1).pop(true);
                                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                                        },
                                      ),
                                      flex: 1,
                                    )
                                  ],
                                ))),
                      ),
                    ),
                  ],
                ))));


  }




}
