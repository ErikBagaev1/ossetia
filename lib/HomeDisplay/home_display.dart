import 'package:flutter/material.dart';
import 'package:ossetia/Theme/theme.dart';

class HomeDisplayWidget extends StatelessWidget {
  const HomeDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: blueColor),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
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
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Hotel Near You ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 20,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 234,
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
                                width: 145,
                                height: 218,
                              ),
                            );
                          }),
                    ),
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
