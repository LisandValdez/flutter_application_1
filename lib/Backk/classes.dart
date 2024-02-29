import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final Color backgroundColor;
  final String emocion;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.emocion,
    required this.onPressed,
  }) : super(key: key);

  @override
  _FeelingButtonState createState() => _FeelingButtonState();
}

class _FeelingButtonState extends State<MyButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _pressed = true;
            });

            Future.delayed(const Duration(minutes: 1), () {
              setState(() {
                _pressed = false;
              });
            });

            widget.onPressed(); // Llamada a la función externa
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: _pressed ? Colors.black38 : widget.backgroundColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
