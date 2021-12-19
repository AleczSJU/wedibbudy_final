import 'dart:core';
import 'dart:ffi';

import 'package:flutter_application_1/enum/diet.dart';
import 'package:flutter_application_1/enum/relationship.dart';
import 'package:flutter_application_1/model/address.dart';
import 'package:flutter_application_1/model/education.dart';
import 'package:flutter_application_1/model/family.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/model/work.dart';

class UserProfile {
  late int _id;

  late Users _user;

  late String _dpPath;

  late Double _salary;

  late RelationShip _relationShip;

  late Diet _diet;

  late Double _height;

  late Double _weight;

  late Education _education;

  late Family _family;

  late Work _work;

  late Address _currentAddress;

  late Address _birthAddress;
}
