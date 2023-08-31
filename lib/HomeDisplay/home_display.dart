import 'package:flutter/material.dart';
import 'package:ossetia/Firebase/storage.dart';
import 'package:ossetia/HomeDisplay/place_card.dart';
import 'package:ossetia/Theme/theme.dart';

class HomeDisplayWidget extends StatelessWidget {
  const HomeDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: blueColor),
                  child: Image.asset(
                    'assets/images/ossetia.jpeg',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.black,
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
                    textCard(text: "Отели рядом"),
                    placeCard.art(
                      height: 232,
                      widht: 145,
                      folder: 'otel/',
                    ),
                    textCard(text: "АРТ-объекты"),
                    placeCard.art(
                      height: 144,
                      widht: 145,
                      folder: 'art/',
                    )
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
