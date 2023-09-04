import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  final FirebaseStorage storage = FirebaseStorage.instance;
  Future<String> downLoadImg(String imageName) async {
    String downLoadUrl = await storage.ref(imageName).getDownloadURL();
    return downLoadUrl;
  }

  Future<List<String>> getImageNames(String imageName) async {
    Reference storageRef = storage.ref();
    List<String> imageNames = [];
    try {
      ListResult result = await storageRef.child(imageName).listAll();
      for (var itemRef in result.items) {
        imageNames.add(itemRef.name);
      }
    } catch (e) {
      // Обработка ошибок
    }
    return imageNames;
  }
}
