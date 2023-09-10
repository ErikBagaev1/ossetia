import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/CultureDisplay/models.dart';

@RoutePage()
class AboutCultureDisplay extends StatefulWidget {
  const AboutCultureDisplay({super.key, required this.cultureIndex});
  final CultureModel cultureIndex;

  @override
  State<AboutCultureDisplay> createState() => _AboutCultureDisplayState();
}

class _AboutCultureDisplayState extends State<AboutCultureDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            title: Center(
              child: Text(
                widget.cultureIndex.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    widget.cultureIndex.about,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.cultureIndex.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ]);
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
