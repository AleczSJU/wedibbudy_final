
class AppData {
  static final AppData _appData = AppData._internal();

  late String userContext;
  late String user;

  setUser(user){
    this.user = user;
  }

  String getUser(){
    return user;
  }

  setUserContext(userContext){
    this.userContext = userContext;
  }

  String getUserContext(){
    return userContext;
  }


  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
final appData = AppData();