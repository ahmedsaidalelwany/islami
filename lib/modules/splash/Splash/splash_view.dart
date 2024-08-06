import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/layout/layout_view.dart';

// ignore: camel_case_types
class splash_view extends StatefulWidget {
  const splash_view({super.key});

  static const routeName = '/splash_view';

  @override
  State<splash_view> createState() => _splash_viewState();
}

// ignore: camel_case_types
class _splash_viewState extends State<splash_view> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, Layout.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(
          image: AssetImage('assets/images/bk1.png'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Image(
            image: AssetImage('assets/images/logo2.png'),
            width: 150,
            height: 150,
          ),
        ),
      ],
    );
  }
}
