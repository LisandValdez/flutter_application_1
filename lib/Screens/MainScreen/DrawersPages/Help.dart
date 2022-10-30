import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/drawer.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext contex) => Scaffold(
        appBar: AppBar(
          title: Text('Ayuda'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue.shade400,
        ),
        drawer: const Drawers(),
      );
}
