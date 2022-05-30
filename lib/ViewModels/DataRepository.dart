import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:woski_garnek/Models/Dish.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('menu');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addPet(Dish dish) {
    return collection.add(dish.toJson());
  }

  void updatePet(Dish dish) async {
    await collection.doc(dish.referenceId).update(dish.toJson());
  }

  void deleteDish(Dish dish) async {
    await collection.doc(dish.referenceId).delete();
  }
}
