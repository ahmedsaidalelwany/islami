import 'package:flutter/material.dart';

class TasbeehView extends StatefulWidget {
  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'tasbeeh View',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'ElMessiri'),
      ),
    );
  }
}
