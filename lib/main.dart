import 'package:flutter/material.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/theme/app_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: App_theme_manager.lightTheme,
      initialRoute: Layout.routeName,
      routes: {
        Layout.routeName: (context) => const Layout(),
      },
    );
  }
}
