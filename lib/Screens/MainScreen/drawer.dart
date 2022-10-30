import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/Calendar.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/Help.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/emocionomtro.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/grafic.dart';
import 'package:flutter_application_1/Screens/MainScreen/DrawersPages/notes.dart';
import 'DrawersPages/profile.dart';
import 'package:flutter_application_1/Screens/MainScreen.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Color.fromARGB(255, 200, 233, 109),
            child: ListView(children: [
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Perfil',
                icon: Icons.person,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Emociones',
                icon: Icons.mood_rounded,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Notas',
                icon: Icons.notes_rounded,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Gráfico',
                icon: Icons.moving_rounded,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Emocionómetro',
                icon: Icons.thermostat_rounded,
                onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Calendario',
                icon: Icons.calendar_month_outlined,
                onClicked: () => selectedItem(context, 5),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Ayuda',
                icon: Icons.question_mark,
                onClicked: () => selectedItem(context, 6),
              ),
            ])));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final Color = Colors.black;
    final hoverColor = Colors.white60;

    return ListTile(
      leading: Icon(
        icon,
        color: Color,
      ),
      title: Text(text, style: TextStyle(color: Color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Profile(),
        ));
        break;
    }
    switch (index) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ));
        break;
    }
    switch (index) {
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Notes(),
        ));
        break;
    }
    switch (index) {
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Grafic(),
        ));
        break;
    }
    switch (index) {
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Emocionometro(),
        ));
        break;
    }
    switch (index) {
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Calendar(),
        ));
        break;
    }
    switch (index) {
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Help(),
        ));
        break;
    }
  }
}
