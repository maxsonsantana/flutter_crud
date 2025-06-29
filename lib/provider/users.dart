import 'dart:math';

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

  User byIndex(int i) {
    return _users.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    final id = Random().nextDouble().toString();

    _users.putIfAbsent(
      '1000',
      () => User(
        id: id,
        name: user.name,
        email: user.email,
        avatarUrl: user.avatarUrl,
      ),
    );

    notifyListeners();
  }
}
