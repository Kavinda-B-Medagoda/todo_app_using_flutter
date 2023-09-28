import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onpress;
  MyButton({
    super.key,
    required this.text,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
