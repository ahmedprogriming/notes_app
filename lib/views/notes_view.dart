import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Color(0xff53ECD7),
      ),
      body:const NotesViewBody(),
    );
  }
}
