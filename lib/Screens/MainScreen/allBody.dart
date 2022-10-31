import 'package:flutter/material.dart';

void main() => runApp(const AllBody());

class AllBody extends StatelessWidget {
  const AllBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
          color: Colors.red.shade300,
          child:
              (Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Center(
              child: MaterialButton(
                color: Colors.red.shade400,
                child: const Text(
                  "Ira",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            MaterialButton(
              color: Colors.red.shade400,
              child: const Text(
                "Alegria",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.red.shade400,
              child: const Text(
                "Tristeza",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ])),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Center(
            child: ElevatedButton(
              child: const Text(
                "Ira",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Alegria",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text(
              "Tristeza",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onPressed: () {},
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Center(
            child: ElevatedButton(
              child: const Text(
                "Ira",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Alegria",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text(
              "Tristeza",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onPressed: () {},
          ),
        ]),
      ],
    );
  }
}
