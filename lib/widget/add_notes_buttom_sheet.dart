import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_Text_field.dart';

class AddNoteShowButtomSheet extends StatelessWidget {
  const AddNoteShowButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomTextFiled()
        ],
      ),
    );
  }
}