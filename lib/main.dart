import 'package:flutter/material.dart';
import 'package:midterm/models/note.dart';

import "models/mock_data.dart";
import 'screens/first/first_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MAP Mid Term Test',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: FirstScreen(mockNoteList),
  ));
}
