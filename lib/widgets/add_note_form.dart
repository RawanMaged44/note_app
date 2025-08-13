import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_application_hive/add_note_cubit/add_note_cubit.dart';
import 'package:note_application_hive/add_note_cubit/add_note_state.dart';
import 'package:note_application_hive/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(children: [
        const SizedBox(height: 34),
        CustomTextField(hintText: 'Title',
          onSaved: (value) {
            title = value;
          },),
        const SizedBox(height: 16,),
        CustomTextField(hintText: 'Content',
          maxLines: 5,
          onSaved: (value) {
            subTitle = value;
          },),
        const SizedBox(height: 16),
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomButton(
                isLoading: state is AddNoteLoading ?true :false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                   var currentDate = DateTime.now();
                   var formattedCurrentDate = DateFormat.yMd().format(currentDate);
                  var noteModel = NoteModel(title: title!,
                      color: Colors.blue.value,
                      date: formattedCurrentDate,
                      subTitle: subTitle!);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            );
          },
        ),
        const SizedBox(height: 16,)
      ],),
    );
  }
}
