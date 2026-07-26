import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widget/custom_Text_field.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key,required this.note});

  final NoteModel note;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {

  String ? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(onPressed: (){
            widget.note.title=title??widget.note.title;
            widget.note.subtitle=subTitle??widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
            title: 'Edit Note', 
          icon: Icons.check),
          SizedBox(height: 50),

          CustomTextFiled(hint: 'Title',
          initialValue: widget.note.title
          , onChanged: (value)
          {
        title=value;
          }),
            SizedBox(height: 16),
          CustomTextFiled(hint: 'Content', 
          initialValue: widget.note.subtitle,
          maxLines: 5
          , onChanged: (value)
          {
        subTitle=value;
          }),
        ],
      ),
    );
  }
}
