import 'package:intl/intl.dart';

class CommonMethod {
  //static String userInContext = AppData().getUserContext();
  var jsonUser;
  CommonMethod() {
 
  }

  String getDob(model,index) {
    var value = model[index]['user']['dob'];
    if(value==null){
      value = "-";
    }else{
      var value1 = DateTime.fromMillisecondsSinceEpoch(value);
      var d12 = DateFormat('MM/dd/yyyy, hh:mm a').format(value1);
      value=d12;
    }
    return value.toString();
  }

  String getAge(model, int index) {
    var value = model[index]['user']['age'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getHeight(model, int index) {
    var value = model[index]['userProfile']['height'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getWeight(model, int index) {
    var value = model[index]['userProfile']['weight'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getEducation(model, int index) {
    var value = model[index]['education']['name'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getWork(model, int index) {
    var value = model[index]['work']['position'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getHomeContactNo(model, int index) {
    var value = model[index]['family']['homeContactno'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getHomeAddress(model, int index) {
    var value = model[index]['family']['homeAddress'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }

  String getDbPath(model, int index) {
    var value = model[index]['userProfile']['dpPath'];
    if(value==null){
      value = "-";
    }
    return value.toString();
  }


}
