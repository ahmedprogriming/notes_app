
import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_searchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style:const TextStyle(fontSize: 28),),
        Spacer(),
        CustomIcon(
          ico: icon,
        )
      ],
    );
  }
}

