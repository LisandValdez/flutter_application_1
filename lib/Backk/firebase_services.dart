import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//Future<void> addFeelings(String emocion, int valor, DateTime fecha ) async {
//  await db.collection("Emociones").add({"emocion": emocion, "valor": valor, "fecha": fecha.toString()});}

Future<void> addFeelings(String emocion, int valor, DateTime fecha) async {
  await db.collection("Emociones").add({
    "emocion": emocion,
    "valor": valor,
    "fecha": fecha.toString(),
  });
}

Future<List<Map<String, dynamic>>?> leerEmociones() async {
  try {
    // Acceder a la instancia de Firestore
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Realizar la consulta para obtener todos los documentos de la colección "Emociones"
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collection("Emociones").get();

    // Lista para almacenar los datos de los documentos
    List<Map<String, dynamic>> emociones = [];

    // Iterar sobre los documentos obtenidos y añadirlos a la lista
    querySnapshot.docs.forEach((documento) {
      emociones.add(documento.data());
    });

    // Retornar la lista de emociones
    return emociones;
  } catch (error) {
    // Manejar errores
    print("Error al leer las emociones: $error");
    return null;
  }
}

void main() async {
  // Ejemplo de uso de la función
  List<Map<String, dynamic>>? listaEmociones = await leerEmociones();

  if (listaEmociones != null) {
    // Imprimir los datos de las emociones
    print("Datos de las emociones:");
    listaEmociones.forEach((emocion) {
      print(emocion);
    });
  } else {
    print("Error al leer las emociones.");
  }
}
