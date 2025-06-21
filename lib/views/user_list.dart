import 'package:flutter/material.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/components/user_title.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Kairós App'),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: ListView.builder(
        itemCount: users.length, // Replace with the actual number of users
        itemBuilder: (context, index) =>
            UserTile(users.values.elementAt(index)),
      ),
    );
  }
}
