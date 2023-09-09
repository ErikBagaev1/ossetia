import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/CultureDisplay/models.dart';

@RoutePage()
class AboutCultureDisplay extends StatefulWidget {
  const AboutCultureDisplay({super.key, required this.cultureIndex});
  final CultureModel cultureIndex;

  @override
  State<AboutCultureDisplay> createState() => _AboutCultureDisplayState();
}

class _AboutCultureDisplayState extends State<AboutCultureDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          widget.cultureIndex.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.cultureIndex.about,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Text(
            widget.cultureIndex.description,
            textAlign: TextAlign.justify,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
          )
        ],
      ),
    );
  }
}
