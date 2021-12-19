import 'dart:collection';
import 'dart:core';

import 'package:flutter_application_1/enum/gender_enum.dart';
import 'package:flutter_application_1/model/domain.dart';
import 'package:flutter_application_1/model/role.dart';
import 'package:flutter_application_1/model/user_profile.dart';

class Users {
  late int _id;
  late String _firstname;
  late String lastname;
  late String username;
  late int _contactno;
  bool enabled = false;
  bool deleted = false;
  late String _checkSum;
  late DateTime _createdTime;
  late DateTime _modifiedTime;
  late Set<Role> roles = new HashSet<Role>();
  late UserProfile _userProfile;
  late Domain _domain;
  late Users _registeredby;
  late DateTime _dob;
  late GenderEnum genderEnum;
  late int _age;
}
