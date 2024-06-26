import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:try_something/login/code.dart';
import 'package:try_something/BottomNavBAR/buttom_navbar.dart';
import 'package:try_something/travel_interface/interface.dart';
import 'package:try_something/login/login_page.dart';
import 'package:try_something/login/register_page.dart';
import 'package:try_something/login/send_mail.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
        'code': (context) => MyCode(),
        'Mail': (context) => MyMail(),
        'interface': (context) => MyInterface(),
        'nav': (context) => Navigation(),
      },
    ),
  ));
}
