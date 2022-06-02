import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:woski_garnek/Models/Dish.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('menu');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<List<Dish>> getAllData() async {
    List<Dish> dishes = [];

    collection.get().then((value) {
      for (var element in value.docs) {
        final dish = Dish.fromSnapshot(element);
        dishes.add(dish);
      }
    });

    return dishes;
  }

  Stream<QuerySnapshot> getFilteredStream(String type) {
    return collection.where("type", isEqualTo: type).snapshots();
  }

  Future filterDishes(String type) async {
    List<Dish> unsorted = await getAllData();
    List<Dish> sorted = [];
    if (type == 'All') {
      sorted = unsorted;
    } else {
      for (var dish in unsorted) {
        if (dish.type == type) {
          sorted.add(dish);
        }
      }
    }
    debugPrint(sorted.toString());
    return sorted;
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
