import 'package:app/model/urlmodel.dart';
import 'package:app/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class discover extends StatelessWidget {
  const discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Our Animals"),
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Ionicons.male_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.female_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message))
            ]),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  child: Text(
                    "Latest Dogs",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/06/24/09/13/continental-bulldog-2437110__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("4 Months"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("Pitbull"),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/05/07/10/49/husky-3380550__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("6 Months"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("Huskey"),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/04/17/10/38/doberman-1334497__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("2 Years"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("German dog"),
                  ),
                )
              ],
            )),
            SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  child: Text(
                    "Latest Cats",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("1 year"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("Grey Cat"),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("6 Months"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("Tiger cat"),
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462__340.jpg"))),
                  child: ListTile(
                    subtitle: Text("2 Years"),
                    leading: Icon(Ionicons.add_outline),
                    title: Text("Sherazi cat"),
                  ),
                )
              ],
            )),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2022/07/23/04/43/add-image-7339311_960_720.png"))),
              child: Column(
                children: [
                  urlclass(
                    myfunction: Facebook_function,
                    myPlatformIcon: Icons.facebook,
                    myPlatformTitle: "Facebook",
                    myPlatformSubTitle: "join our facebook page",
                  ),
                  urlclass(
                    myfunction: instagram_function,
                    myPlatformIcon: Ionicons.logo_instagram,
                    myPlatformTitle: "Instagram",
                    myPlatformSubTitle: "join our Instagram page",
                  ),
                  Divider(
                    height: 200,
                  ),
                  Center(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context, MaterialPageRoute(
                            builder: (context) {
                              return home();
                            },
                          ));
                        },
                        icon: Icon(Icons.home),
                        label: Text("home page")),
                  )
                ],
              ),
            ),
          ])),
    );
  }
}
