import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/Screens/MainScreen/drawer.dart';

class TermometroWidget extends StatelessWidget {
  final double altura;

  TermometroWidget({required this.altura});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Ancho del termómetro
      height: 300, // Altura máxima del termómetro
      padding: EdgeInsets.only(
          bottom: 10.0), // Espacio adicional en la parte inferior
      decoration: BoxDecoration(
        color: Colors.grey[300], // Color del termómetro
        border:
            Border.all(color: Colors.black, width: 2), // Borde del termómetro
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Barra del termómetro
          Container(
            width: 40,
            height: altura *
                6, // Escalar la altura a una escala de 6 para que la altura máxima sea de 50 emociones
            color: Colors.red, // Color de la barra del termómetro
          ),
        ],
      ),
    );
  }
}

class TermometroPage extends StatefulWidget {
  @override
  _TermometroPageState createState() => _TermometroPageState();
}

class _TermometroPageState extends State<TermometroPage> {
  double _alturaTermometro = 0;

  @override
  void initState() {
    super.initState();
    _actualizarAlturaTermometro();
  }

  Future<void> _actualizarAlturaTermometro() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collection("Emociones").get();

    int totalEmociones = 0;
    querySnapshot.docs.forEach((doc) {
      totalEmociones += doc['valor'] == 2
          ? -1
          : 1; // Incrementa para "ira", "tristeza", "miedo" y "disgusto", decrementa para "felicidad"
    });

    setState(() {
      _alturaTermometro = (totalEmociones.toDouble() / 2)
          .clamp(0, 50); // Limita la altura máxima a 50 emociones
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen[200], // Color de fondo del appbar
        title: const Text('EMOCIONÓMETRO'), // Título del appbar
      ),
      drawer: const Drawers(),
      body: Container(
        color: Colors.lightGreen[100], // Color de fondo de la pantalla
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TermometroWidget(altura: _alturaTermometro),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TermometroPage(),
  ));
}

//agregar detalles