import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widget/custom_Text_field.dart';

class AddNoteShowButtomSheet extends StatelessWidget {
  const AddNoteShowButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            CustomTextFiled(hint: 'Title',),    
               SizedBox(height: 16,),
            CustomTextFiled(hint: 'Content',maxLines: 5,),
             SizedBox(height: 16,),
            CustomButton(),
             SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color:kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20),),
      ),
    );
  }
}