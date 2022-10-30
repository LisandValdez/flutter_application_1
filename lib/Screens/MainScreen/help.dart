import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen.dart';

void main() => runApp(const Help());

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          elevation: 30,
          backgroundColor: Colors.deepPurple.shade400,
          title: const Text(
            '¿Como usar?',
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.start,
          ),
          leading: (IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
          )),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
