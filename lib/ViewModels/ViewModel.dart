import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ViewModel {
  List menu = [];
  final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("menu");

  Future getData() async {
    try {
      //to get data from a single/particular document alone.
      await collectionRef.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          menu.add(result.data());
        }
      });

      print(menu);
      return menu;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> addDish() async {
    await printDocID();
    //creates a new doc with unique doc ID
    return collectionRef
        .add({
          "comments": ["good"],
          "dish": "Kebab",
          "ingredients": ["a", "b", "c"],
          "weight": 250
        })
        .then((value) => debugPrint("User Added"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }

  static Future<void> addComments({dish: String, comment: String}) async {
    //creates a new doc with unique doc ID
    CollectionReference menu = FirebaseFirestore.instance.collection('menu');
    final existingDish = await menu.doc(dish).get();
    print(existingDish);
    // FirebaseFirestore.instance
    //     .collection("menu")
    //     .doc(dish)
    //     .update({dish: comment})
    // return menu
    //     .doc("/menu")
    //     .update({dish: comment})
    //     .then((value) => print("Comment Updated"))
    //     .catchError((error) => print("Failed to comment dish $dish: $error"));
  }

  Future<void> addField() {
    return collectionRef
        .doc('MyDoc')
        //will edit the doc if already available or will create a new doc with this given ID
        .set(
          {'role': "developer"},
          SetOptions(merge: true),
          // if set to 'false', then only these given fields will be added to that doc
        )
        .then((value) => debugPrint("User Added"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }

  printDocID() async {
    var querySnapshots = await collectionRef.get();
    for (var snapshot in querySnapshots.docs) {
      var documentID = snapshot.id;
      debugPrint(documentID);
    }
  }
}
