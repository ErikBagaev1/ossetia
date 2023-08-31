// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ossetia/Theme/theme.dart';

class placeCard extends StatefulWidget {
  final double height;
  final double widht;
  final List folder;
  const placeCard({
    super.key,
    required this.height,
    required this.widht,
    required this.folder,
  });

  @override
  State<placeCard> createState() => _placeCardState();
}

class _placeCardState extends State<placeCard> {
  var flag = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.folder.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                width: widget.widht,
                height: widget.height,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.folder[index].image,
                        width: widget.widht,
                        height: widget.height,
                        fit: BoxFit.fill,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/about",
                            arguments: widget.folder);
                      },
                      child: Container(
                        width: widget.widht,
                        height: widget.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: const Alignment(0.00, -1.00),
                            end: const Alignment(0, 1),
                            colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(0.5299999713897705)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          if (flag) {
                            flag = false;
                          } else {
                            flag = true;
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: flag ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textAbout(
                            text: '${widget.folder[index].name}',
                            size: 12,
                          ),
                          textAbout(
                            text: widget.folder[index].location,
                            size: 10,
                          ),
                          if (widget.folder[index].image
                              .startsWith('assets/house/')) ...{
                            Row(
                              children: [
                                textAbout(
                                  text: '\$${widget.folder[index].price}/сутки',
                                  size: 12,
                                ),
                              ],
                            )
                          }
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}

class textAbout extends StatelessWidget {
  const textAbout({
    super.key,
    required this.text,
    required this.size,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: shapeDecorationBlack,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: size,
            letterSpacing: 0.02,
            height: 1.5,
          ),
        ),
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
