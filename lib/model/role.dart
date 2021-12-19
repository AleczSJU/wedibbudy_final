import 'dart:collection';
import 'dart:core';

import 'package:flutter_application_1/model/permission.dart';

class Role{
  
  late int _id;
	
	late String _description;

	late String _name;
	
	late Set<Permission> _permissions = new HashSet<Permission>();


}
