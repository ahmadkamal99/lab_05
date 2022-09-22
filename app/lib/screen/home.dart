import 'package:app/screen/discover.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return discover();
                    },
                  ));
                },
                icon: Icon(Icons.pets),
                label: Text("Animal Store"))
          ],
          title: Row(
            children: [Text("Home page "), Icon(Icons.home)],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2022/07/01/17/13/pet-stores-7295959__340.jpg"))),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "welcome to home page",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Icon(Icons.home)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
