import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_values.dart';
import 'package:flutter_application_1/common/message_constant.dart';

class FilterPage extends StatefulWidget {
  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  TextEditingController email =
      TextEditingController(text: 'example@email.com');
  bool isValid = true;
  int dateOfBirth = 0;
  TextEditingController jobController = TextEditingController(text: '');
  TextEditingController educationController = TextEditingController(text: '');
  TextEditingController ageMinController = TextEditingController(text: '');
  TextEditingController ageMaxNumController = TextEditingController(text: '');
  TextEditingController salaryMinController = TextEditingController(text: '');
  TextEditingController salaryMaxControler = TextEditingController(text: '');
  TextEditingController heightController = TextEditingController(text: '');
  TextEditingController weightController = TextEditingController(text: '');
  TextEditingController dobController = TextEditingController(text: '');
  String strFootValue = "1\'", strInchValue = "0\"";
  final List<String> footList = [
    "1\'",
    "2\'",
    "3\'",
    "4\'",
    "5\'",
    "6\'",
    "7\'",
    "8\'",
    "9\'",
    "10\'",
  ].toList();

  final List<String> inchList = [
    "0\"",
    "1\"",
    "2\"",
    "3\"",
    "4\"",
    "5\"",
    "6\"",
    "7\"",
    "8\"",
    "9\"",
    "10\"",
    "11\"",
    "12\"",
  ].toList();

  final formKey = GlobalKey<FormState>();
  late DateTime pickedDate;
  bool isValidHeight = true;

  @override
  Widget build(BuildContext context) {
    showHeight() {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => new WillPopScope(
              onWillPop: () async {
                Navigator.pop(context);
                return false;
              },
              child: new SafeArea(
                  child: new Scaffold(
                      backgroundColor: Colors.black38,
                      body: new Stack(
                        children: <Widget>[
                          new Positioned(
                              right: 0.0,
                              left: 0.0,
                              bottom: 38.0,
                              child: new Container(
                                  height: 190.0,
                                  color: Colors.transparent,
                                  child: new Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            13.0, 0, 13, 0),
                                        child: Container(
                                          color: Colors.white,
                                          height: 155.0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  color: Colors.white,
                                                  height: 40.0,
                                                  child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          13.0, 8, 0, 0),
                                                      child: Text(
                                                        "Height",
                                                        style: TextStyle(
                                                            color: const Color(
                                                                ColorValues
                                                                    .GREY_TEXT_COLOR),
                                                            fontSize: 18.0,
                                                            fontFamily:
                                                                'customRegular'),
                                                      ))),
                                              new Container(
                                                color: const Color(
                                                    ColorValues.GREY__COLOR),
                                                height: 0.3,
                                              ),
                                              Container(
                                                  height: 113.0,
                                                  child: new Row(
                                                    children: [
                                                      new Expanded(
                                                        child: CupertinoPicker(
                                                            backgroundColor:
                                                                Colors.white,
                                                            onSelectedItemChanged:
                                                                (value) {
                                                              print(
                                                                  "CupertinoPicker Value+++++");
                                                              setState(() {
                                                                //selectedValue = value;
                                                                strFootValue =
                                                                    footList[
                                                                        value];
                                                                print("CupertinoPicker Value+++++" +
                                                                    footList[
                                                                        value]);
                                                              });
                                                            },
                                                            itemExtent: 40.0,
                                                            children: new List
                                                                    .generate(
                                                                footList.length,
                                                                (int index) {
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0.0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                child: Text(
                                                                  footList[
                                                                      index],
                                                                ),
                                                              );
                                                            })),
                                                        flex: 1,
                                                      ),
                                                      new Expanded(
                                                        child: CupertinoPicker(
                                                            backgroundColor:
                                                                Colors.white,
                                                            onSelectedItemChanged:
                                                                (value) {
                                                              setState(() {
                                                                //selectedValue = value;
                                                                strInchValue =
                                                                    inchList[
                                                                        value];
                                                                print("CupertinoPicker Value point+++++" +
                                                                    inchList[
                                                                        value]);
                                                              });
                                                            },
                                                            itemExtent: 40.0,
                                                            children: new List
                                                                    .generate(
                                                                inchList.length,
                                                                (int index) {
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        0.0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                child: Text(
                                                                  inchList[
                                                                      index],
                                                                ),
                                                              );
                                                            })),
                                                        flex: 1,
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ))),
                          new Positioned(
                            right: 0.0,
                            left: 0.0,
                            bottom: 10.0,
                            child: new Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, right: 13.0),
                                child: new Container(
                                    color: Colors.white,
                                    padding: new EdgeInsets.all(10.0),
                                    height: 51.0,
                                    child: new Row(
                                      children: <Widget>[
                                        new Expanded(
                                          child: new InkWell(
                                            child: new Container(
                                                child: new Text(
                                              "Cancel",
                                              textAlign: TextAlign.center,
                                              style: new TextStyle(
                                                  color: new Color(ColorValues
                                                      .GREY_TEXT_COLOR),
                                                  fontSize: 16.0,
                                                  fontFamily: 'customRegular'),
                                            )),
                                            onTap: () {
                                              Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop('dialog');
                                            },
                                          ),
                                          flex: 1,
                                        ),
                                        new Expanded(
                                          child: new InkWell(
                                            child: new Container(
                                                child: new Text(
                                              "Save",
                                              textAlign: TextAlign.center,
                                              style: new TextStyle(
                                                  color: new Color(ColorValues
                                                      .BLUE_COLOR_BOTTOMBAR),
                                                  fontSize: 16.0,
                                                  fontFamily: 'customRegular'),
                                            )),
                                            onTap: () {
                                              heightController.text =
                                                  strFootValue + strInchValue;
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                          ),
                                          flex: 1,
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ],
                      )))));
    }

    final heightUi = new InkWell(
        onTap: () {
          showHeight();
        },
        child: new Container(
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            margin: EdgeInsets.all(0.0),
            child: new TextFormField(
              keyboardType: TextInputType.text,
              controller: heightController,
              maxLength: 10,
              style: new TextStyle(
                  color: new Color(ColorValues.HEADING_COLOR_EDUCATION),
                  fontFamily: "customRegular"),
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              enabled: (!isValidHeight),
              onTap: () {
                showHeight();
              },
              decoration: new InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(
                  0.0,
                  5.0,
                  5.0,
                  5.0,
                ),
                counterText: "",
                labelText: "Height",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(ColorValues.DARK_GREY), width: 1.0),
                ),
                counterStyle: new TextStyle(fontFamily: "customRegular"),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(ColorValues.DARK_GREY), width: 1.0)),
                labelStyle: new TextStyle(
                    color: new Color(ColorValues.GREY_TEXT_COLOR),
                    fontFamily: "customRegular",
                    fontSize: 14.0),
                hintText: "Height",
                suffixIcon: new Icon(Icons.arrow_drop_down),
                hintStyle: new TextStyle(
                    color: new Color(ColorValues.GREY_TEXT_COLOR),
                    fontFamily: "customRegular",
                    fontSize: 13),
                fillColor: Colors.transparent,
              ),
            )));
    final weightUi = new Container(
        padding: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        margin: const EdgeInsets.all(0.0),
        child: new TextFormField(
          keyboardType: TextInputType.number,
          controller: weightController,
          maxLength: 10,
          style: new TextStyle(
              color: new Color(ColorValues.HEADING_COLOR_EDUCATION),
              fontFamily: "customRegular"),
          textCapitalization: TextCapitalization.sentences,
          maxLines: null,
          decoration: new InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(
              0.0,
              5.0,
              5.0,
              5.0,
            ),
            counterText: "",
            labelText: "Weight (in pounds)",
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(ColorValues.DARK_GREY), width: 1.0),
            ),
            counterStyle: new TextStyle(fontFamily: "customRegular"),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(ColorValues.DARK_GREY), width: 1.0)),
            labelStyle: new TextStyle(
                color: new Color(ColorValues.GREY_TEXT_COLOR),
                fontFamily: "customRegular",
                fontSize: 14.0),
            hintText: "",
            hintStyle: new TextStyle(
                color: new Color(ColorValues.GREY_TEXT_COLOR),
                fontFamily: "customRegular",
                fontSize: 13),
            fillColor: Colors.transparent,
          ),
          validator: (val) =>
              val!.trim().isEmpty ? MessageConstant.FIELD_REQUIRED : null,
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                methodJobType(),
                methodEducation(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: new Text("Age"),
                ),
                methodAge(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: new Text("Salary"),
                ),
                methodSalary(),
                heightUi,
                weightUi,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row methodSalary() {
    return Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new TextFormField(
                        keyboardType: TextInputType.text,
                        controller: salaryMinController,
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.sentences,
                        style: new TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: new InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          labelText: "Min",
                          counterText: "",
                          labelStyle: new TextStyle(
                              color: new Color(ColorValues.GREY_TEXT_COLOR),
                              fontFamily: "customRegular",
                              fontSize: 14.0),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  new Expanded(
                    child: new TextFormField(
                      keyboardType: TextInputType.text,
                      controller: salaryMaxControler,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.sentences,
                      style: new TextStyle(
                          color: Colors.black, fontFamily: "customRegular"),
                      decoration: new InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                        labelText: "Max",
                        counterText: "",
                        labelStyle: new TextStyle(
                            color: new Color(ColorValues.GREY_TEXT_COLOR),
                            fontFamily: "customRegular",
                            fontSize: 14.0),
                      ),
                    ),
                    flex: 1,
                  )
                ],
              );
  }

  Row methodAge() {
    return Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new TextFormField(
                        keyboardType: TextInputType.number,
                        controller: ageMinController,
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.sentences,
                        style: new TextStyle(
                            color: Colors.black, fontFamily: "customRegular"),
                        decoration: new InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                          labelText: "Min",
                          counterText: "",
                          labelStyle: new TextStyle(
                              color: new Color(ColorValues.GREY_TEXT_COLOR),
                              fontFamily: "customRegular",
                              fontSize: 14.0),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  new Expanded(
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      controller: ageMaxNumController,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.sentences,
                      style: new TextStyle(
                          color: Colors.black, fontFamily: "customRegular"),
                      decoration: new InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                        labelText: "Max",
                        counterText: "",
                        labelStyle: new TextStyle(
                            color: new Color(ColorValues.GREY_TEXT_COLOR),
                            fontFamily: "customRegular",
                            fontSize: 14.0),
                      ),
                    ),
                    flex: 1,
                  )
                ],
              );
  }

  TextFormField methodEducation() {
    return new TextFormField(
      keyboardType: TextInputType.text,
      controller: educationController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: new TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: new InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        labelText: "Education",
        counterText: "",
        labelStyle: new TextStyle(
            color: new Color(ColorValues.GREY_TEXT_COLOR),
            fontFamily: "customRegular",
            fontSize: 14.0),
      ),
    );
  }

  TextFormField methodJobType() {
    return new TextFormField(
      keyboardType: TextInputType.text,
      controller: jobController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: new TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: new InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        labelText: "Job Type",
        counterText: "",
        labelStyle: new TextStyle(
            color: new Color(ColorValues.GREY_TEXT_COLOR),
            fontFamily: "customRegular",
            fontSize: 14.0),
      ),
    );
  }
}
