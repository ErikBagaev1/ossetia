import 'package:flutter/material.dart';
import 'package:ossetia/HomeDisplay/models.dart';
import 'package:ossetia/Theme/theme.dart';

class AboutHomeWidget extends StatefulWidget {
  const AboutHomeWidget({super.key});

  @override
  State<AboutHomeWidget> createState() => _AboutHomeWidgetState();
}

class _AboutHomeWidgetState extends State<AboutHomeWidget> {
  @override
  Widget build(BuildContext context) {
    dynamic about =
        (ModalRoute.of(context)?.settings.arguments ?? '') as dynamic;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 430,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    child: Image.asset(
                      about.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: shapeDecorationWhite,
                        height: 40,
                        width: 40,
                        child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Container(
                          decoration: shapeDecorationWhite,
                          height: 40,
                          width: 40,
                          child: const Icon(Icons.favorite, color: Colors.red)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 430,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AboutScreenText(about: about),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SliderImage(about: about),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SliderImage(about: about),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SliderImage(about: about),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SliderImage(about: about),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SliderImage(about: about),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({
    super.key,
    required this.about,
  });

  final dynamic about;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(about.image),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(8),
            )));
  }
}

// ignore: camel_case_types
class AboutScreenText extends StatelessWidget {
  const AboutScreenText({
    super.key,
    required this.about,
  });

  final dynamic about;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: shapeDecorationBlack,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              about.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.48,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            decoration: shapeDecorationBlack,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                about.location,
                style: const TextStyle(
                  color: Color.fromARGB(255, 215, 214, 214),
                  fontSize: 18,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.30,
                  letterSpacing: 0.12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
