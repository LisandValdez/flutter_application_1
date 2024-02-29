import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cloud_firestore/cloud_firestore.dart';

class Emocion {
  final String emocion;
  final int frecuencia;

  Emocion(this.emocion, this.frecuencia);
}

class GraficoBarrasWidget extends StatefulWidget {
  @override
  _GraficoBarrasWidgetState createState() => _GraficoBarrasWidgetState();
}

class _GraficoBarrasWidgetState extends State<GraficoBarrasWidget> {
  List<Emocion> emociones = [];

  // Mapa para asignar colores a cada emoción
  Map<String, charts.Color> coloresMap = {
    'Ira': charts.MaterialPalette.red.shadeDefault,
    'Felicidad': charts.MaterialPalette.yellow.shadeDefault,
    'Tristeza': charts.MaterialPalette.green.shadeDefault,
    'Sorpresa': charts.MaterialPalette.blue.shadeDefault,
    'Miedo': charts.MaterialPalette.purple.shadeDefault,
    'Disgusto': charts.MaterialPalette.deepOrange.shadeDefault,
  };

  @override
  void initState() {
    super.initState();
    cargarDatosEmociones();
  }

  Future<void> cargarDatosEmociones() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collection("Emociones").get();

    // Mapa para mapear los valores de Firestore a las emociones correspondientes
    Map<int, String> emocionesMap = {
      1: 'Ira',
      2: 'Felicidad',
      3: 'Tristeza',
      4: 'Sorpresa',
      5: 'Miedo',
      6: 'Disgusto',
    };

    // Mapa para contar la frecuencia de cada emoción
    Map<String, int> frecuencias = {};

    // Contar la frecuencia de cada emoción
    querySnapshot.docs.forEach((doc) {
      int valor = doc['valor'];
      String emocion = emocionesMap[valor]!;
      frecuencias[emocion] = (frecuencias[emocion] ?? 0) + 1;
    });

    // Convertir el mapa de frecuencias en una lista de objetos Emocion
    setState(() {
      emociones = frecuencias.entries
          .map((entry) => Emocion(entry.key, entry.value))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Emocion, String>> series = [
      charts.Series(
        id: 'Emociones',
        data: emociones,
        domainFn: (Emocion emocion, _) => emocion.emocion,
        measureFn: (Emocion emocion, _) => emocion.frecuencia,
        colorFn: (Emocion emocion, _) =>
            coloresMap[emocion.emocion] ??
            charts.MaterialPalette.gray.shadeDefault,
        labelAccessorFn: (Emocion emocion, _) => '${emocion.frecuencia}',
      )
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: emociones.isEmpty
            ? CircularProgressIndicator()
            : Container(
                height: 400,
                padding: EdgeInsets.all(20),
                child: charts.BarChart(
                  series,
                  animate: true,
                  vertical: false,
                  barRendererDecorator: charts.BarLabelDecorator<String>(),
                  domainAxis: charts.OrdinalAxisSpec(
                    renderSpec: const charts.SmallTickRendererSpec(
                      labelAnchor: charts.TickLabelAnchor.centered,
                      labelRotation: 0,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
