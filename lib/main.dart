import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/BasikDisplay/basik_display.dart';
import 'package:ossetia/HomeDisplay/about_display.dart';
import 'package:ossetia/Theme/theme.dart';
import 'package:ossetia/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const OssetiaApp());
}

class OssetiaApp extends StatefulWidget {
  const OssetiaApp({super.key});

  @override
  State<OssetiaApp> createState() => _OssetiaAppState();
}

class _OssetiaAppState extends State<OssetiaApp> {
  final _router = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Осетия',
      theme: ThemeData(
        primarySwatch: materialWhite,
      ),
      routerConfig: _router.config(),
    );
  }
}
