import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:woski_garnek/Models/Dish.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('menu');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Stream<QuerySnapshot> getFilteredStream(String type) {
    if (type == 'All') {
      return collection.snapshots();
    } else {
      return collection.where('type', isEqualTo: type).snapshots();
    }
  }

  Stream<QuerySnapshot> getFavorites() {
    return collection.where('isRecommended', isEqualTo: true).snapshots();
  }

  Future<DocumentReference> addDish(Dish dish) {
    return collection.add(dish.toJson());
  }

  void updateDish(Dish dish) async {
    await collection.doc(dish.referenceId).update(dish.toJson());
  }

  void deleteDish(Dish dish) async {
    await collection.doc(dish.referenceId).delete();
  }

// Future<List<Post>> fetchPosts(BuildContext context) async {
//   final response = await DefaultAssetBundle.of(context)
//       .loadString('lib/StaticData/BlogPosts.json');
//
//   if (response.isNotEmpty) {
//     List responseList = BlogPosts.fromRawJson(response).posts;
//     return responseList.map((data) => Post.fromJson(data)).toList();
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load post');
//   }
// }
}
