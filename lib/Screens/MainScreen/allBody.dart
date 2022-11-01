import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/classes.dart';

void main() => runApp(const AllBody());

class AllBody extends StatelessWidget {
  const AllBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 420,
          color: Colors.red.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'IRA',
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Decaido",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Humillado",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Amargo",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Agresivo",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Enojado",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Frustrado",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Distante",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Critico",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Traicionado",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Resentido",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Irrespetuoso",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Ridiculizado",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Indignado",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Violado",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Furioso",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Celoso",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Provocado",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Hostil",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Enfurecido",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Molesto",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Retirado",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.red.shade400,
                        text: "Entumecido",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Esceptico",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.red.shade400,
                    text: "Desdeñoso",
                    onPressed: () {}),
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
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.green.shade400,
                        text: "Mal",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.green.shade400,
                        text: "Mal",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.green.shade400,
                        text: "Mal",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.green.shade400,
                    text: "Mal",
                    onPressed: () {}),
              ]),
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
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.blue.shade400,
                        text: "Triste",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.blue.shade400,
                        text: "Triste",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.blue.shade400,
                        text: "Triste",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                    child: Buttons(
                        textColor: Colors.black,
                        backgroundColor: Colors.blue.shade400,
                        text: "Triste",
                        onPressed: () {})),
                Buttons(
                    textColor: Colors.black,
                    backgroundColor: Colors.blue.shade400,
                    text: "Triste",
                    onPressed: () {}),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
