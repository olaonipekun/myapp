import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignInScreen({super.key});

  Future<void> signIn(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      // Mark user as signed in
      await prefs.setBool('isLoggedIn', true);

      // Navigate to HomeScreen
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign In"),
      backgroundColor: Colors.blueGrey,
      elevation: 16.0,),
      backgroundColor: const Color.fromARGB(255, 236, 241, 244),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => signIn(context),
              child: const Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> signOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    // Navigate back to the SignInScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => signOut(context),
          ),
        ],
      ),
      body: const Center(
        child: Text("Welcome to the Home Screen!"),
      ),
    );
  }
}
