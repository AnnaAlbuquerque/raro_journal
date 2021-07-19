import 'package:flutter/widgets.dart';

class Note {
  String title;
  String body;
  Color color;
  DateTime creationDate;
  bool hasDate;
  bool isFavorite;
  bool hasAttchment;

  Note({
    required this.title,
    required this.body,
    required this.color,
    required this.creationDate,
    required this.hasDate,
    required this.isFavorite,
    required this.hasAttchment,
  });
}
