// import 'dart:convert';
// import 'dart:ui';
// import 'package:http/http.dart' as http;

import 'package:appanuj/models/list.dart';
import 'package:appanuj/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appanuj/widgets/drawer.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Future<Item> getData;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   getData = loadData();
  // }

  // Future<Item> loadData() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  //   if (response.statusCode == 200) {
  //     return Item.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception('exception has occured');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          width: 500,
          decoration: BoxDecoration(
            color: Theme.of(context).focusColor,
          ),
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 35,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Theme.of(context).focusColor,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      InkWell(
                        onTap: () {
                          print('tapped');
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Text('Search'),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                CupertinoIcons.search,
                                size: 16,
                                color: Theme.of(context).focusColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              categoryList(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 140,
                alignment: Alignment.center,
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo),
                child: Text(
                  'CATALOGUE',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  // physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 25, right: 10, bottom: 5),
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff14213D),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text(
                                "Polyphia",
                                style: TextStyle(
                                    color: Theme.of(context).highlightColor),
                                textScaleFactor: 1.5,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, top: 35),
                              child: Icon(
                                Icons.music_note,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 170, top: 15),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/samurai.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 25, right: 10, bottom: 5),
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff14213D),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text(
                                "Marshmellow",
                                style: TextStyle(
                                    color: Theme.of(context).highlightColor),
                                textScaleFactor: 1.5,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, top: 35),
                              child: Icon(
                                Icons.music_note,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 120, top: 15),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/pngegg.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 25, right: 10, bottom: 5),
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff14213D),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text(
                                "1975 A.D.",
                                style: TextStyle(
                                    color: Theme.of(context).highlightColor),
                                textScaleFactor: 1.5,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, top: 35),
                              child: Icon(
                                Icons.music_note,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 170, top: 15),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/flutter.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 25, right: 10, bottom: 5),
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff14213D),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 10),
                              child: Text(
                                "Tribal",
                                style: TextStyle(
                                    color: Theme.of(context).highlightColor),
                                textScaleFactor: 1.5,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, top: 35),
                              child: Icon(
                                Icons.music_note,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200, top: 15),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/ninja.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // child: FutureBuilder<Item>(
                //   future: getData,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData) {
                //       return Text(snapshot.data!.title);
                //     } else if (snapshot.hasError) {
                //       return Text("${snapshot.error}");
                //     }

                //     // By default, show a loading spinner.
                //     return CircularProgressIndicator();
                //   },
                // ),
              ))
            ]),
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}
