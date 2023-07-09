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
                  child: FutureBuilder(
                      future: storage.downLoadImg('main/ossetia.jpeg'),
                      builder: (BuildContext context,
                          AsyncSnapshot<String> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done &&
                            snapshot.hasData) {
                          return Image.network(
                            snapshot.data!,
                            fit: BoxFit.fill,
                          );
                        }
                        if (snapshot.connectionState ==
                                ConnectionState.waiting ||
                            !snapshot.hasData) {
                          return const CircularProgressIndicator();
                        }
                        return Container();
                      }),
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
