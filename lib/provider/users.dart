import 'package:flutter/material.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

class UsersProvider with ChangeNotifier {
  final Map<String, User> _users = {...DUMMY_USERS};

  List<User> get all {
    return [..._users.values];
  }

  int get count {
    return _users.length;
  }
}
