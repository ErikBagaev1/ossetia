import 'package:flutter/material.dart';
import 'package:ossetia/BasikDisplay/basik_display.dart';
import 'package:ossetia/Theme/theme.dart';

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
      title: 'Осетия',
      theme: ThemeData(
        primarySwatch: materialWhite,
      ),
      routes: {
        "/": (context) => const BasikDisplayWidget(),
      },
      initialRoute: "/",
    );
  }
}
