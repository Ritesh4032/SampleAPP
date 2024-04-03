import 'package:flutter/material.dart';
import 'package:try_something/code.dart';
import 'package:try_something/login_page.dart';
import 'package:try_something/register_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'code': (context) => MyCode(),
    },
  ));
}
