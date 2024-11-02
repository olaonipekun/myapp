// Suggested code may be subject to a license. Learn more: ~LicenseLog:674950433.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:712365185.
import 'package:flutter/material.dart';

class Homie extends StatelessWidget {
  const Homie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('The App'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}

