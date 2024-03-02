import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/emocionomtro.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/grafic.dart';
import 'package:flutter_application_1/Screens/MainScreen.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: const Color.fromARGB(255, 200, 233, 109),
            child: ListView(children: [
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Emociones',
                icon: Icons.mood_rounded,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Gráfico',
                icon: Icons.moving_rounded,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Emocionómetro',
                icon: Icons.thermostat_rounded,
                onClicked: () => selectedItem(context, 2),
              ),
            ])));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    // ignore: constant_identifier_names
    const Color = Colors.black;
    const hoverColor = Colors.white60;

    return ListTile(
      leading: Icon(
        icon,
        color: Color,
      ),
      title: Text(text, style: const TextStyle(color: Color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ));
        break;
    }
    switch (index) {
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GraficoBarrasWidget(),
          ),
        );
        break;
    }
    switch (index) {
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TermometroPage(),
        ));
        break;
    }
  }
}
