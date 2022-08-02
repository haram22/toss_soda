import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final Widget name;

  const button({super.key, required this.name, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => name));
        },
        child: Text(text));
  }
}
