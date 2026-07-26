import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widget/color_listview.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key,required this.note});

final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {

late int currentindex;

  @override

  void initState() {

    currentindex=kColors.indexOf(Color(widget.note.color));
        super.initState();
  }
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentindex = index;

              widget.note.color=kColors[index].value;
                setState(() {});
              },
              child: ColorItem(isSelected: currentindex == index,
              listcolor: kColors[index],),
            ),
          );
        },
      ),
    );
  }
}