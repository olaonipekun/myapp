import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:545197092.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 188, 233, 197),
        elevation: 6.4,
        shadowColor: const Color.fromARGB(31, 29, 28, 28),
      ),
      body: const Center(
        child: Text(
          'Data stated here',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
