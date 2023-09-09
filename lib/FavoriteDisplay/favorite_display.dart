import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/HomeDisplay/lists.dart';
import 'package:ossetia/Theme/theme.dart';
import 'package:ossetia/router/router.dart';

@RoutePage()
class FavoriteDisplayWidget extends StatefulWidget {
  const FavoriteDisplayWidget({super.key});

  @override
  State<FavoriteDisplayWidget> createState() => _FavoriteDisplayWidgetState();
}

class _FavoriteDisplayWidgetState extends State<FavoriteDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> favorite = [];
    for (var i = 0; i < homeList.length; i++) {
      if (homeList[i].isFavorite) {
        favorite.add(homeList[i]);
      }
    }
    for (var i = 0; i < artList.length; i++) {
      if (artList[i].isFavorite) {
        setState(() {});
        favorite.add(artList[i]);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Избранное',
          style: TextStyle(fontWeight: FontWeight.w700, color: blueColor),
        )),
      ),
      body: ListView.builder(
          itemCount: favorite.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => AutoRouter.of(context)
                            .push(AboutHomeRoute(about: favorite[index])),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      '${favorite[index].image}',
                                      height: 140,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${favorite[index].name}',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text('${favorite[index].location}',
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () {
                                  if (favorite[index].isFavorite) {
                                    favorite[index].isFavorite = false;
                                  } else {
                                    favorite[index].isFavorite = true;
                                  }
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: favorite[index].isFavorite
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
