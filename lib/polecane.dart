// import 'dart:convert';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:woski_garnek/ViewModels/DataRepository.dart';
// import 'Models/Dish.dart';
//
// class Polecane extends StatefulWidget {
//   const Polecane({Key? key}) : super(key: key);
//
//   @override
//   _PolecaneState createState() => _PolecaneState();
// }
//
// class _PolecaneState extends State<Polecane> {
//   List dataList = [Dish];
//   List menu = [Dish];
//   final CollectionReference collectionRef =
//       FirebaseFirestore.instance.collection("menu");
//
//   final DataRepository repository = DataRepository();
//
//   Widget listViewWidget(List<Dish> dish) {
//     return Container(
//       child: ListView.builder(
//           itemCount: 20,
//           padding: const EdgeInsets.all(2.0),
//           itemBuilder: (context, position) {
//             return Card(
//               child: ListTile(
//                 title: Text(
//                   '${dish[position].dish}',
//                   style: TextStyle(
//                       fontSize: 18.0,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 leading: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(
//                     child: dish[position].images[0] == null
//                         ? Image(
//                             image: AssetImage('images/no_image_available.png'),
//                           )
//                         : Image.network('${dish[position].images[0]}'),
//                     height: 100.0,
//                     width: 100.0,
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Firebase Demo"),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 DataRepository.getStream;
//                 setState(() {});
//               },
//               icon: const Icon(Icons.add))
//         ],
//       ),
//       body: FutureBuilder(
//         future: DataRepository.getStream(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return const Text(
//               "Something went wrong",
//             );
//           }
//           if (snapshot.connectionState == ConnectionState.done) {
//             menu = snapshot.data as List;
//
//             menu = dishFromJson(jsonEncode(snapshot.data)) as List;
//             print(menu);
//             return buildItems(menu);
//           }
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
//
//   Widget buildItems(dataList) => ListView.separated(
//       padding: const EdgeInsets.all(8),
//       itemCount: dataList.length,
//       separatorBuilder: (BuildContext context, int index) => const Divider(),
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//             title: Row(children: [
//           Column(
//             children: [
//               Text(dataList[index]["dish"] ?? "name not found",
//                   style: Theme.of(context).textTheme.titleMedium),
//               Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   child: Expanded(
//                       child: Text(
//                           dataList[index]["description"] ?? "name not found",
//                           style: Theme.of(context).textTheme.bodySmall))),
//             ],
//           ),
//           Image.network(
//             'https://img.freepik.com/darmowe-zdjecie/czas-pizzy-smaczna-domowa-tradycyjna-pizza-wloski-przepis_144627-42528.jpg?t=st=1653823723~exp=1653824323~hmac=f47ca3eeebb9a8ade0f089d2f852cb4241211e6bd0d50505ef75a94f4fd41f5b&w=2000',
//             width: MediaQuery.of(context).size.width / 4,
//
//             // CarouselSlider(
//             //   options: CarouselOptions(),
//             //   items: dataList[index]["images"]
//             //       .map<Widget>((item) => Container(
//             //             child: Image.network(item, fit: BoxFit.cover, width: 10),
//             //           ))
//             //       .toList(),
//             // ),
//           )
//         ]));
//       });
// }
