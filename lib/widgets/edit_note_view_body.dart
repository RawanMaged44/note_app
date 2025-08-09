import 'package:flutter/material.dart';
import 'package:note_application_hive/widgets/custom_appbar.dart';
import 'package:note_application_hive/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
          const SizedBox(height: 50,),
          CustomTextField(hintText: 'Title'),
          const SizedBox(height: 18,),
          CustomTextField(hintText: 'Content' , maxLines: 5,)
        ],
      ),
    );
  }
}
