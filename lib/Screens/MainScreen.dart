import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/prueba.dart';
import 'MainScreen/NavBar.dart';
import 'MainScreen/drawer.dart';
import 'MainScreen/allBody.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: bar(context),
      drawer: const Drawers(),
      body: Prueba(),
    );
  }
}
