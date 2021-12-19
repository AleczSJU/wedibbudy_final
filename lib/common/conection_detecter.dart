import 'package:connectivity/connectivity.dart';



import 'dart:async';


class ConectionDetecter {
  static final Connectivity conectivity = Connectivity();

  static Future<bool> isConnected() async {
    var connectivityResult = await (conectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
