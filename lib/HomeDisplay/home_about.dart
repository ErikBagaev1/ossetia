import 'package:flutter/material.dart';

class AboutHomeWidget extends StatefulWidget {
  const AboutHomeWidget({super.key});

  @override
  State<AboutHomeWidget> createState() => _AboutHomeWidgetState();
}

class _AboutHomeWidgetState extends State<AboutHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
