import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child:  Center(
        child: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
