import 'package:flutter/material.dart';

import 'ViewModels/ViewModel.dart';

class Polecane extends StatefulWidget {
  const Polecane({Key? key}) : super(key: key);

  @override
  _PolecaneState createState() => _PolecaneState();
}

class _PolecaneState extends State<Polecane> {
  List dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Demo"),
        actions: [
          IconButton(
              onPressed: () {
                ViewModel().addDish();
                setState(() {});
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: FutureBuilder(
        future: ViewModel().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            dataList = snapshot.data as List;
            return buildItems(dataList);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildItems(dataList) => ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: dataList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            dataList[index]["weight"] ?? "name not found",
          ),
        );
      });
}
