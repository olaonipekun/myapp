import 'package:flutter/material.dart';
import 'package:myapp/UI/currency_converter.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:myapp/UI/home_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticationWrapper(),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  Future<bool> checkIfLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkIfLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData && snapshot.data!) {
          return const HomeScreen();
        } else {
          return SignInScreen();
        }
      },
    );
  }
}
