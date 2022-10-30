import 'package:flutter/material.dart';
import 'MainScreen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 233, 109),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/mc_logo.png',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: Color.fromARGB(255, 215, 252, 5),
                  child: const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
