import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:woski_garnek/Models/Dish.dart';



class DataRepository {
  final CollectionReference collection = Firestore.instance.collection('pets');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addDish(Dish dish) {
    return collection.add(dish.toJson());
  }

  updateDish(Dish dish) async {
    await collection.document(dish.reference.documentID).updateData(dish.toJson());
  }
}