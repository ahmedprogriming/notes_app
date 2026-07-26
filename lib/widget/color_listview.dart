import 'package:flutter/material.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentindex = 0;

  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color.fromARGB(0, 7, 227, 62),
    Color.fromARGB(255, 195, 205, 210),
    Color.fromARGB(255, 200, 9, 234),

    Color.fromARGB(255, 40, 3, 253),
    Color.fromARGB(255, 223, 153, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: ColorItem(isSelected: currentindex == index,
              listcolor: colors[index],),
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
