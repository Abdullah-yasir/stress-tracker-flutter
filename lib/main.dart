import 'package:flutter/material.dart';
import 'package:testproject/routes.dart';
import 'package:testproject/screens/daily_timeline_screen.dart';
import 'package:testproject/screens/login_screen.dart';
import 'package:testproject/screens/main_screen.dart';
import 'package:testproject/screens/notifications_screen.dart';
import 'package:testproject/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        initialRoute: Routes.LOGIN,
        routes: {
          Routes.HOME: (ctx) => const MainScreen(),
          Routes.MAIN: (ctx) => const MainScreen(),
          Routes.LOGIN: (ctx) => const LoginScreen(),
          Routes.SIGNUP: (ctx) => const RegisterScreen(),
          Routes.CALENDAR: (ctx) => const CalenderScreen(),
          Routes.NOTIFICATIONS: (ctx) => const NotificationsScreen(),
        });
  }
}
