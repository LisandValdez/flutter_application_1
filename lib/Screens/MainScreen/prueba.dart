import 'package:flutter/material.dart';

void main() => runApp(const Prueba());

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 200,
          color: Colors.red.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              ])
            ],
          ),
        ),
        Container(
          height: 200,
          color: Colors.green.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                MaterialButton(
                  color: Colors.green.shade400,
                  child: const Text(
                    "Tristeza",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ])
            ],
          ),
        ),
        Container(
          height: 200,
          color: Colors.blue.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              ])
            ],
          ),
        )
      ],
    );
  }
}
