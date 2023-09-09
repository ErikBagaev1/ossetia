import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:ossetia/Theme/theme.dart';

@RoutePage()
class AboutHomeWidget extends StatefulWidget {
  const AboutHomeWidget({super.key, required this.about});
  final dynamic about;
  @override
  State<AboutHomeWidget> createState() => _AboutHomeWidgetState();
}

class _AboutHomeWidgetState extends State<AboutHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutScreenTop(about: widget.about),
                    const AboutUs(),
                    const ServicesFull()
                  ],
                ),
              ),
            ),
            AppAboutBar(about: widget.about),
            BottomAboutBar(about: widget.about)
          ],
        ),
      ),
    );
  }
}

class AppAboutBar extends StatefulWidget {
  const AppAboutBar({
    required this.about,
    super.key,
  });
  final dynamic about;

  @override
  State<AppAboutBar> createState() => _AppAboutBarState();
}

class _AppAboutBarState extends State<AppAboutBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  AutoRouter.of(context).pop();
                }),
          ),
          Container(
            decoration: shapeDecorationWhite,
            height: 40,
            width: 40,
            child: IconButton(
                onPressed: () {
                  if (widget.about.isFavorite) {
                    widget.about.isFavorite = false;
                  } else {
                    widget.about.isFavorite = true;
                  }
                  setState(() {});
                },
                icon: Icon(Icons.favorite,
                    color: widget.about.isFavorite ? Colors.red : Colors.grey)),
          )
        ],
      ),
    );
  }
}

class BottomAboutBar extends StatelessWidget {
  const BottomAboutBar({
    super.key,
    required this.about,
  });

  final dynamic about;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 16,
              offset: Offset(4, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (about.image.startsWith('assets/house/')) ...{
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Цена',
                      style: textStyleSmall,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('${about.price}р/сутки', style: textStyleBig),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFF2B66FF))),
                  child: const Text(
                    'Забронировать',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              } else ...{
                Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xFF2B66FF))),
                      child: const Text(
                        'Маршрут',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )),
                )
              }
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesFull extends StatelessWidget {
  const ServicesFull({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Text(
            'Услуги и оснащение',
            style: textStyleBig,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Services(
                    text: 'Parking area',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Swimming poo',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Parking area',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Swimming po0',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Services(
                    text: 'Parking area',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Swimming poo',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Parking area',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  _Services(
                    text: 'Swimming po0',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Services extends StatelessWidget {
  final String text;
  const _Services({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_sharp,
          color: Color(0xFF2B66FF),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(text, style: textStyleSmall),
      ],
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Подробная информация',
            style: textStyleBig,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Welcome to resort paradise we ensure the best service during your stay in bali with an emphasis on customer comfort. Enjoy Balinese specialties, dance and music every Saturday for free at competitive prices. You can enjoy all the facilities at our resort',
            textAlign: TextAlign.justify,
            style: textStyleSmall,
          )
        ],
      ),
    );
  }
}

class AboutScreenTop extends StatelessWidget {
  const AboutScreenTop({
    super.key,
    required this.about,
  });

  final dynamic about;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
