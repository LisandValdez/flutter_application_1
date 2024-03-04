import 'package:flutter/material.dart';
import 'package:flutter_application_1/Backk/Listas.dart';
import 'package:flutter_application_1/Backk/classes.dart';
import 'package:flutter_application_1/Backk/firebase_services.dart';

//ira : Valor = 1
//Felicidad: Valor = 2
//Tristeza: Valor = 3
//Sorpresa: Valor = 4
//Miedo: Valor = 5
//Disgusto: Valor = 6
void main() => runApp(const AllBody());

class AllBody extends StatelessWidget {
  const AllBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 430,
          width: double.infinity,
          color: Colors.red.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 1, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.yellow.shade400,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 2, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.green.shade300,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 3, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.blue.shade300,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 4, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.purple.shade300,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 5, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
        Container(
          height: 430,
          color: Colors.orange.shade300,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        emocion: feeling,
                        onPressed: () {
                          addFeelings(feeling, 6, DateTime.now());
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
