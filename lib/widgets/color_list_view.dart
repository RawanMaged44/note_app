import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application_hive/add_note_cubit/add_note_cubit.dart';

import 'color_item.dart';


class ColorItemListview extends StatefulWidget {
  const ColorItemListview({super.key});

  @override
  State<ColorItemListview> createState() => _ColorItemListviewState();
}

class _ColorItemListviewState extends State<ColorItemListview> {
int selectedIndex =0;
List<Color>colorsList = [
  const Color(0xffAC3931),
  const Color(0xffE5D352),
  const Color(0xffD9E76C),
  const Color(0xff537D8D),
  const Color(0xff482C3D),

];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(

          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: () {
              selectedIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color=colorsList[index];
              setState(() {

              });
            },
            child: ColorItem(
              isActive: selectedIndex  ==index, color: colorsList[index],
            ),
          ),
        );
      },),
    );
  }
}
