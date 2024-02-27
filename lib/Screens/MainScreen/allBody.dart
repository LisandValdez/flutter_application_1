import 'package:flutter/material.dart';
import 'package:flutter_application_1/Backk/Listas.dart';

void main() => runApp(AllBody());

class AllBody extends StatelessWidget {
  AllBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 430,
          color: Colors.red.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'IRA',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Ira)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.red.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.yellow.shade400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Felicidad',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Felicidad)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.yellow.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.green.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Triteza',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Tristeza)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.green.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.blue.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Sorpresa',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Sorpresa)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.blue.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.purple.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Miedo',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Miedo)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.purple.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.orange.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Disgusto',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              for (List<String> row in Disgusto)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (String feeling in row)
                      MyButton(
                        text: feeling,
                        backgroundColor: Colors.orange.shade100,
                      ),
                  ],
                ),
            ],
          ),
        ),
        // Otros contenedores y filas de botones ...
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const MyButton({Key? key, required this.text, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: backgroundColor,
            minimumSize: Size(double.infinity, 50),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 20), // Ajusta el tamaño de la fuente
          ),
        ),
      ),
    );
  }
}
