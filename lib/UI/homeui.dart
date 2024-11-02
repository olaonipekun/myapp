import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement your widget here.
    return Container(
      color: Colors.cyan,
      alignment: Alignment.center,
      child: const Stack(
        alignment: Alignment.center,
        children: [
          Text(
            "data 1",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.9,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline
            ),
          ),
          Text(
            "data 2",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.9,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline
            ),
          ),
          Text(
            "data 3",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.9,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline
            ),
          ),
        ],
      ),
    );
  }
}

// Suggested code may be subject to a license. Learn more: ~LicenseLog:51019626.
class Scall extends StatelessWidget {
  const Scall({super.key});

  // ignore: avoid_print
  //void _onPressed() => print("Button Pressed");

  @override
  Widget build(BuildContext context) {
    const String titleText = "New App Bar";
    return Scaffold(
      //backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 8.0,
        shadowColor: const Color.fromARGB(255, 36, 35, 35),
        title: const Text(titleText),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.mobile_friendly),
              onPressed: () {
                // Show a SnackBar as a tooltip alternative
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("This is a tooltip message!"),
                    backgroundColor: Colors.black,
                    elevation: 10.0,
                    duration: Duration(seconds: 2)));
              }),
          const IconButton(onPressed: null, icon: Icon(Icons.search)),
        ],
      ),

      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bonny",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.9,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              child: const Text("Button"),
              onTap: () {
                debugPrint("Button Pressed");
              },
            ),
          ],
        ),
      ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3100959436.
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Button Pressed"),
        backgroundColor: Colors.lightBlue,
        tooltip: "Please add some",
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        onTap: (int i) => debugPrint("Tapped index $i"),
      ),
    );
  }
}

class GestureDetect extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2687475285.
  const GestureDetect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 127, 224),
        elevation: 3.0,
        shadowColor: const Color.fromARGB(255, 25, 25, 25),
        title: const Text("Gestures",
            style: TextStyle(fontSize: 20.0, color: Colors.white)),
      ),
      body: const Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(  
    onTap: () {
      const snackBar = SnackBar(content: Text("opening data"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
    child: const Text("open"),
    );
  }
}
