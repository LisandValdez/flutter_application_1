import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/drawer.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext contex) => Scaffold(
        appBar: AppBar(
          title: Text('Notas'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue.shade400,
        ),
        drawer: const Drawers(),
      );
}
