import 'package:flutter/material.dart';
import 'help.dart';

AppBar bar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    elevation: 30,
    backgroundColor: Colors.lightBlue.shade400,
    title: const Text(
      'Mind Care',
      style: TextStyle(color: Colors.black, fontSize: 20),
      textAlign: TextAlign.start,
    ),
    actions: [
      Stack(
        alignment: Alignment.center,
        children: [
          MaterialButton(
            height: 50,
            elevation: 20,
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Help()));
            },
            shape: const CircleBorder(),
            child: const Icon(
              Icons.question_mark,
              color: Colors.white,
            ),
          ),
        ],
      )
    ],
  );
}
