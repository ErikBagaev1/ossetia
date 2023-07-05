// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class placeCard extends StatelessWidget {
  final double height;
  final double widht;

  const placeCard.home({
    super.key,
    required this.height,
    required this.widht,
  });
  const placeCard.art({
    super.key,
    required this.height,
    required this.widht,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/about");
      },
      child: SizedBox(
        height: height,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: widht,
                  height: 218,
                ),
              );
            }),
      ),
    );
  }
}

class textCard extends StatelessWidget {
  final String text;
  const textCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 5),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color(0xFF323232),
            fontSize: 20,
            fontFamily: 'SF Pro',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
