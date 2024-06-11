// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
    final Function()? onTap;

    const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 75),
        decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          // ignore: prefer_const_literals_to_create_immutables
          colors: [Color.fromRGBO(125, 58, 241, 1),Color.fromRGBO(78, 36, 230, 1)],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}