import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.ico, this.onPressed});
final IconData ico;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
          ico,
          size: 28,
          )
          ),
    ));
  }
}