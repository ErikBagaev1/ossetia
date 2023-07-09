// ignore_for_file: camel_case_types

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/Firebase/storage.dart';

class placeCard extends StatefulWidget {
  final double height;
  final double widht;

  const placeCard.art({
    super.key,
    required this.height,
    required this.widht,
  });

  @override
  State<placeCard> createState() => _placeCardState();
}

class _placeCardState extends State<placeCard> {
  final Storage storage = Storage();
  late Future<List<String>> _listArtNameFuture;

  @override
  void initState() {
    super.initState();
    _listArtNameFuture = storage.getImageNames('art/');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/about");
      },
      child: SizedBox(
          height: widget.height,
          child: FutureBuilder<List<String>>(
            future: _listArtNameFuture,
            builder:
                (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Text(
                    'Ошибка при получении списка названий изображений');
              } else if (snapshot.hasData) {
                final List<String> listArtName = snapshot.data!;
                print(listArtName);
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listArtName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: widget.widht,
                        height: 218,
                        child: FutureBuilder(
                          future:
                              storage.downLoadImg('art/${listArtName[index]}'),
                          builder: (BuildContext context,
                              AsyncSnapshot<String> snapshot) {
                            if (snapshot.connectionState ==
                                    ConnectionState.waiting ||
                                !snapshot.hasData) {
                              return const CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return const Text(
                                  'Ошибка при загрузке изображения');
                            } else {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  snapshot.data!,
                                  fit: BoxFit.fill,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Container();
              }
            },
          )),
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
