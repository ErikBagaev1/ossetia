import 'package:flutter/material.dart';
import 'package:ossetia/HomeDisplay/models.dart';

class AboutHomeWidget extends StatefulWidget {
  const AboutHomeWidget({super.key});

  @override
  State<AboutHomeWidget> createState() => _AboutHomeWidgetState();
}

class _AboutHomeWidgetState extends State<AboutHomeWidget> {
  final List<HomeModel> about = [
    HomeModel(
        image: '', name: 'Владикавказ', location: '', price: 2000, stars: 0)
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(about[0].name),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
    );
  }
}
