class HomeModel {
  final String image;
  final String name;
  final String location;
  final int price;
  final int stars;

  HomeModel({
    required this.image,
    required this.name,
    required this.location,
    required this.price,
    required this.stars,
  });
}

class ArtModel {
  final String image;
  final String name;
  final String location;

  ArtModel({required this.image, required this.name, required this.location});
}
