import 'package:flutter/material.dart';
import 'package:flutter_crud/views/user_list.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UsersProvider())],
      child: MaterialApp(
        title: 'Flutter CRUD',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: UserList(),
      ),
    );
  }
}
