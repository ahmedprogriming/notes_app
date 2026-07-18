import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_note_Item.dart';

class NotesCustmListView extends StatelessWidget {
  const NotesCustmListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index)
    {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: const NoteItem(),
      );
    });
  }
}