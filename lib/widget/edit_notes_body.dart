import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_Text_field.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),

          CustomTextFiled(hint: 'Title'),
            SizedBox(height: 16),
          CustomTextFiled(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
