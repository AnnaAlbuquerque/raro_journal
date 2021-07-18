import 'package:flutter/widgets.dart';

class Note {
  String title;
  String body;
  Color color;
  DateTime creationDate;
  Note({
    required this.title,
    required this.body,
    required this.color,
    required this.creationDate,
  });
}
