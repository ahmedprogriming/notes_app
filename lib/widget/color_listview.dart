import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentindex = 0;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
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

                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.listcolor});
  final bool isSelected;

  final Color listcolor;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 34, backgroundColor: listcolor),
          )
        : CircleAvatar(radius: 38, backgroundColor:listcolor);
  }
}
