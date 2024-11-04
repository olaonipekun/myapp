// Suggested code may be subject to a license. Learn more: ~LicenseLog:674950433.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:712365185.
import 'package:flutter/material.dart';

class Homie extends StatelessWidget {
  const Homie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 10.0,
        scrolledUnderElevation: 2.0,
        //shadowColor: const Color.fromARGB(31, 20, 20, 20),
        centerTitle: true,
        actions: const <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.home))
          ],
        leading: const Icon(Icons.menu),
        title: const Text('The App', style: TextStyle(
          fontWeight: FontWeight.bold),),
           
      ),
      body: const Center(
          child: Text(
        'Data stated here',
        textDirection: TextDirection.ltr,
      )),
    );
  }
}
