// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  const SquareTile({
    super.key,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(100),
        color: Color.fromARGB(255, 245, 241, 241),
      ),
      child: Image.asset(
        imagepath,
        height: 40,
      ),
    );
  }
}