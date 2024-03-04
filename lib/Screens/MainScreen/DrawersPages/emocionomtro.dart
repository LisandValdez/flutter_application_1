import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/Screens/MainScreen/drawer.dart';

class TermometroWidget extends StatelessWidget {
  final double altura;

  const TermometroWidget({required this.altura});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Ancho del termómetro
      height: 300, // Altura máxima del termómetro
      decoration: BoxDecoration(
        color: Colors.grey[300], // Color del termómetro
        border: Border.all(
          color: Colors.black,
          width: 2,
        ), // Borde del termómetro
        borderRadius: BorderRadius.circular(10), // Borde redondeado
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Barra del termómetro
          Container(
            width: 30,
            height: altura *
                6, // Escalar la altura a una escala de 6 para que la altura máxima sea de 50 emociones
            decoration: const BoxDecoration(
              color: Colors.red, // Color de la barra del termómetro
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
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
    for (var doc in querySnapshot.docs) {
      totalEmociones += doc['valor'] == 2
          ? -1
          : 1; // Incrementa para "ira", "tristeza", "miedo" y "disgusto", decrementa para "felicidad"
    }

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
        width: double.infinity, //ajusta el ancho de pantalla
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Las emociones negativas harán que suba el termómetro,\nlas emociones positivas lo harán bajar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: TermometroWidget(altura: _alturaTermometro),
                ),
              ),
              const SizedBox(height: 20),
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