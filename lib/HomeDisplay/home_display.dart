import 'package:flutter/material.dart';
import 'package:ossetia/HomeDisplay/place_card.dart';
import 'package:ossetia/Theme/theme.dart';

class HomeDisplayWidget extends StatelessWidget {
  const HomeDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: blueColor),
                )
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: blueColor,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Column(
                  children: [
                    textCard(text: "Hotel Near You "),
                    placeCard(
                      height: 232,
                      widht: 145,
                    ),
                    textCard(
                      text: "Explore Place",
                    ),
                    placeCard(height: 145, widht: 145)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
