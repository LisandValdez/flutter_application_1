import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final VoidCallback? onPressed;
  const Buttons({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MaterialButton(
        onPressed: () {},
        color: widget.backgroundColor,
        textColor: widget.textColor,
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
