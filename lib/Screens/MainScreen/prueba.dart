import 'package:flutter/material.dart';

class Allbody extends StatelessWidget {
  const Allbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade300,
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Center(
                child: ElevatedButton(
                    child: const Text(
                      "Emociones",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {}),
              ),
              ElevatedButton(
                  child: const Text(
                    "Notas",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {}),
              ElevatedButton(
                  child: const Text(
                    "Emocionómetro",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {}),
            ]),
          ],
        ),
      ),
    );
  }
}
