import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext contex) => Scaffold(
        appBar: AppBar(
          title: Text('Perfil'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue.shade400,
        ),
        drawer: const Drawers(),
      );
}
