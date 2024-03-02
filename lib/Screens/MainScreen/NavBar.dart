import 'package:flutter/material.dart';

AppBar bar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    elevation: 30,
    backgroundColor: Colors.lightGreen.shade200,
    title: const Text(
      'EMOCIONES',
      style: TextStyle(color: Colors.black, fontSize: 20),
      textAlign: TextAlign.start,
    ),
  );
}
