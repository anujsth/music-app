// import 'dart:convert';
// import 'dart:html';

// import 'package:flutter/cupertino.dart';

class Item {
  final int UserId;
  final int id;
  final String title;

  Item({required this.UserId, required this.id, required this.title});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      UserId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
