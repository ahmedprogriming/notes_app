import 'package:flutter/material.dart';

class ColorListview extends StatelessWidget {
  const ColorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 30*2,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child:const ColorItem(),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Color.fromARGB(255, 54, 54, 244),
    );
  }
}
