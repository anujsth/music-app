import 'dart:math';

import 'package:appanuj/widgets/theme.dart';
import 'package:flutter/material.dart';

class categoryList extends StatefulWidget {
  const categoryList({Key? key}) : super(key: key);

  @override
  _categoryListState createState() => _categoryListState();
}

class _categoryListState extends State<categoryList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Stack(
                    children: [
                      Text(
                        'Top Trending',
                        style: TextStyle(
                            color: Theme.of(context).focusColor,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Positioned(
                        top: 120,
                        left: 50,
                        child: Text('20 items',
                            style:
                                TextStyle(color: Theme.of(context).focusColor)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(hexColor('#fa8072'))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Stack(
                    children: [
                      Text(
                        'Newest',
                        style: TextStyle(
                            color: Theme.of(context).focusColor,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Positioned(
                        top: 120,
                        left: 50,
                        child: Text('30 items',
                            style:
                                TextStyle(color: Theme.of(context).focusColor)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(hexColor('#4b5c4f'))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Stack(
                    children: [
                      Text(
                        'Most Favorite',
                        style: TextStyle(
                            color: Theme.of(context).focusColor,
                            fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ),
                      Positioned(
                        top: 120,
                        left: 50,
                        child: Text('40 items',
                            style:
                                TextStyle(color: Theme.of(context).focusColor)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 2),
                    child: Stack(
                      children: [
                        Text(
                          'Top Hits',
                          style: TextStyle(
                              color: Theme.of(context).focusColor,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: 1.5,
                        ),
                        Positioned(
                          top: 120,
                          left: 50,
                          child: Text(
                            '10 items',
                            style:
                                TextStyle(color: Theme.of(context).focusColor),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
