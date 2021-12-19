import 'dart:core';

import 'package:flutter_application_1/enum/job_type.dart';
import 'package:flutter_application_1/model/address.dart';
import 'package:flutter_application_1/model/visible.dart';

class Work {
  late int _id;

  late String _organization;

  late DateTime _fromDate;

  late DateTime _toDate;

  late String _position;

  late JobType _jobType;

  late Address _address;

  late String _description;

  late Visible _visible;

  late DateTime _modifiedTime;
}
