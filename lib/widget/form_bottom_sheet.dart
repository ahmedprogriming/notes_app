import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_Text_field.dart';
import 'package:notes_app/widget/custom_button.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {

  final GlobalKey<FormState> formKey=GlobalKey();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(height: 30),
          CustomTextFiled(hint: 'Title',
          onSave: (value)
          {
            title=value;
          },),
         const SizedBox(height: 16),
          CustomTextFiled(hint: 'Content', maxLines: 5,
          onSave: (value) {
            subTitle=value;
          },),
          SizedBox(height: 16),
          CustomButton(onTap: () {
            if(formKey.currentState!.validate())
            {
              formKey.currentState!.save();
            }
            else
            {
              autovalidateMode=AutovalidateMode.always;

              setState(() {
                
              });
            }
            
          },),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
