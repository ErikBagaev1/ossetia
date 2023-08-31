import 'package:flutter/material.dart';

import 'package:ossetia/HomeDisplay/lists.dart';
import 'package:ossetia/HomeDisplay/cards.dart';
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
                  width: double.infinity,
                  decoration: const BoxDecoration(color: blueColor),
                  child: Image.asset(
                    'assets/images/ossetia.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 160,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: shapeDecorationWhite,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Center(
                                child: Text(
                                  'Владикавказ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: shapeDecorationWhite,
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
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
                child: Column(
                  children: [
                    const textCard(text: "Отели рядом"),
                    placeCard(
                      height: 232,
                      widht: 145,
                      folder: homeList,
                    ),
                    const textCard(text: "АРТ-объекты"),
                    placeCard(
                      height: 144,
                      widht: 145,
                      folder: artList,
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
