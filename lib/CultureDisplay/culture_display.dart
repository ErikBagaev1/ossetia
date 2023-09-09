import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/CultureDisplay/about_display.dart';
import 'package:ossetia/CultureDisplay/list.dart';
import 'package:ossetia/Theme/theme.dart';

@RoutePage()
class CultureDisplayWidget extends StatefulWidget {
  const CultureDisplayWidget({super.key});

  @override
  State<CultureDisplayWidget> createState() => _CultureDisplayWidgetState();
}

class _CultureDisplayWidgetState extends State<CultureDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Культура',
          style: TextStyle(fontWeight: FontWeight.w700, color: blueColor),
        )),
      ),
      body: ListView.builder(
        itemCount: cultureList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 224, 224, 224),
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 145,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AboutCultureDisplay(
                                    cultureIndex: cultureList[index],
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            cultureList[index].name,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            cultureList[index].about,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
