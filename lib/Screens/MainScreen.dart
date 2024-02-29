import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/all_Body.dart';
import 'MainScreen/NavBar.dart';
import 'MainScreen/drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: bar(context),
      drawer: const Drawers(),
      body: const AllBody(),
    );
  }
}
