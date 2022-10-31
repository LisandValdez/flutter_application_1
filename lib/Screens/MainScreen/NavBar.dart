import 'package:flutter/material.dart';

AppBar bar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    elevation: 30,
    backgroundColor: Colors.white10,
    title: const Text(
      'Emociones',
      style: TextStyle(color: Colors.black, fontSize: 20),
      textAlign: TextAlign.start,
    ),
  );
}
