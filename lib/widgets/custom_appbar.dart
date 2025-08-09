import 'package:flutter/material.dart';
import 'package:note_application_hive/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {

  final String title;
  final IconData icon;
  CustomAppbar({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
