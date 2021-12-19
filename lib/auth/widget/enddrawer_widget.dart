import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_values.dart';
import 'package:flutter_application_1/enum/gender_enum.dart';

class EndDrawer {
  bool isValid = true;
  int dateOfBirth = 0;
  TextEditingController firstNameController = TextEditingController(text: '');
  TextEditingController lastNameController = TextEditingController(text: '');
  TextEditingController fatherNameController = TextEditingController(text: '');
  TextEditingController motherNameController = TextEditingController(text: '');
  TextEditingController DeityNameController = TextEditingController(text: '');
  TextEditingController GoutraNameController = TextEditingController(text: '');
  TextEditingController HomeCityNameController =
      TextEditingController(text: '');
  TextEditingController CurrentCityNameController =
      TextEditingController(text: '');
  TextEditingController WeightMinController = TextEditingController(text: '');
  TextEditingController WeightMaxControler = TextEditingController(text: '');
  TextEditingController HeightMinController = TextEditingController(text: '');
  TextEditingController HeightMaxControler = TextEditingController(text: '');
  TextEditingController salaryMinController = TextEditingController(text: '');
  TextEditingController salaryMaxController = TextEditingController(text: '');
  TextEditingController ageMinController = TextEditingController(text: '');
  TextEditingController ageMaxController = TextEditingController(text: '');
  TextEditingController educationController = TextEditingController(text: '');
  TextEditingController jobController = TextEditingController(text: '');

  TextEditingController dobController =
      TextEditingController(text: DateTime.now().toString());

  final formKey = GlobalKey<FormState>();
  late DateTime pickedDate;

  bool _isLoading = false;
  var errorMsg;
  GenderEnum? _genderEnum = GenderEnum.Male;
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';

  Drawer buildDrawer(BuildContext context) {
    Widget applyButton = Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          final form = formKey.currentState;
          form!.save();
          if (form.validate()) {
            //registerServiceCall();
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: 40,
          child: const Center(
              child: Text("Apply",
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

    Widget filterForm = Container(
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 25.0), child: applyButton),
          Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(left:0, top: 10.0, bottom: 5.0),
                          child: Text('General Information',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.green)
                                    ),
                          
                        ),
                        //General information start
                        methodJobType(),
                        methodEducation(),
                        const Padding(
                          padding: EdgeInsets.only(left:0, top: 10.0, bottom: 5.0),
                          child: Text("Age"),
                        ),
                        methodAge(),
                        const Padding(
                          padding: EdgeInsets.only(left:0, top: 10.0, bottom: 5.0),
                          child: Text("Salary"),
                        ),
                        methodSalary(),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: Text("Height"),
                        ),
                        methodHeight(),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: Text("Weight"),
                        ),
                        methodWeight(),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: Text('Personal Information',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.green)
                                    ),
                        ),
                        //Personal information start
                        methodWidgetFirstname(),
                        methodWidgetLastname(),
                        methodWidgetFatherName(),
                        methodWidgetMotherName(),
                        methodWidgetDeityName(),
                        methodWidgetGoutraName(),
                        methodWidgetHomeCityName(),
                        methodWidgetCurrentCityName(),
                      ],
                    ),
                  )
                )
              ),
        ],
      ),
    );

    return Drawer(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: ListView(
              children: <Widget>[
                Spacer(flex: 3),
                title(),
                Spacer(),
                //                subTitle,
                Spacer(flex: 2),
                //welcomeBack,
                //Spacer(),
                filterForm,
                Spacer(flex: 4),
              ],
            ),
          ),
        ],
      ),
    );
  } //buildDrawer

  Padding title() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text('Filter',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          )),
    );
  }

//General information start
  TextFormField methodJobType() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: jobController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        labelText: "Job Type",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodEducation() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: educationController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        labelText: "Education",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  Row methodAge() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: ageMinController,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                labelText: "Min",
                counterText: "",
                labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
              ),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: ageMaxController,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              labelText: "Max",
              counterText: "",
              labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
            ),
          ),
          flex: 1,
        )
      ],
    );
  }

  Row methodSalary() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: salaryMinController,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                labelText: "Min",
                counterText: "",
                labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
              ),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: salaryMaxController,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              labelText: "Max",
              counterText: "",
              labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
            ),
          ),
          flex: 1,
        )
      ],
    );
  }

  Row methodHeight() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: HeightMinController,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                labelText: "Min",
                counterText: "",
                labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
              ),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: HeightMaxControler,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              labelText: "Max",
              counterText: "",
              labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
            ),
          ),
          flex: 1,
        )
      ],
    );
  }

  Row methodWeight() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: WeightMinController,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  )
                ),
                labelText: "Min",
                counterText: "",
                labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
              ),
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: WeightMaxControler,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              labelText: "Max",
              counterText: "",
              labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
            ),
          ),
          flex: 1,
        )
      ],
    );
  }
//General information end

//Personal information start
  TextFormField methodWidgetFirstname() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: firstNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "First Name",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetLastname() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: lastNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Last Name",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetFatherName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: fatherNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Father Name",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetMotherName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: motherNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Mother Name",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetDeityName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: DeityNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Deity",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetGoutraName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: GoutraNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Goutra",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetHomeCityName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: HomeCityNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Home City",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

  TextFormField methodWidgetCurrentCityName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: CurrentCityNameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: Colors.black, fontFamily: "customRegular"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
        suffixIcon: GestureDetector(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        )),
        labelText: "Current City",
        counterText: "",
        labelStyle: TextStyle(color: Colors.grey, fontFamily: "customRegular"),
      ),
    );
  }

//Personal information end

} //EndDrawer