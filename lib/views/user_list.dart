import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_title.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:provider/provider.dart';
import 'package:flutter_crud/provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kairós App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              users.put(
                User(
                  id: '1234',
                  name: 'Madruga',
                  email: 'seu@madruga.com',
                  avatarUrl: 'https://i.pravatar.cc/150?img=3',
                ),
              ); // This will add a new user
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count, // Replace with the actual number of users
        itemBuilder: (context, index) => UserTile(users.byIndex(index)),
      ),
    );
  }
}
