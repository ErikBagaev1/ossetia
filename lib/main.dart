import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/BasikDisplay/basik_display.dart';
import 'package:ossetia/HomeDisplay/home_about.dart';
import 'package:ossetia/Theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        "/about": (context) => const AboutHomeWidget(),
      },
      initialRoute: "/",
    );
  }
}
