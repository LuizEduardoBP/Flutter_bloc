import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;


  const ButtonWidget({Key? key, required this.text, required this.color, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(text, style: TextStyle(color: Colors.black, fontSize: 16))),
    );
  }
}
