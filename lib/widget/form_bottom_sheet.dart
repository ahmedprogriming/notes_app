import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widget/custom_Text_field.dart';
import 'package:notes_app/widget/custom_button.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
    String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomTextFiled(
            hint: 'Title',
            onSave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFiled(
            hint: 'Content',
            maxLines: 5,
            onSave: (value) {
              subTitle = value;
            },
          ), 
          SizedBox(height: 16),
          BlocBuilder<AddNoteCubit, AddNoteState>(
               builder: (context, state) {
          return CustomButton(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
            
                  var noteModel = NoteModel(
                    title: title!,
                    subtitle: subTitle!,
                    date:_formatDate(DateTime.now()),
                    color: Colors.blue.value,
                  );
            
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
            
                  setState(() {});
                }
              },
            );
               }
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
