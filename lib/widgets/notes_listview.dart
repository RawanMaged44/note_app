import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application_hive/models/note_model.dart';
import 'package:note_application_hive/notes_cubit/notes_cubit.dart';
import 'package:note_application_hive/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
   NotesListview({super.key, required this.notes});
   List<NoteModel> notes ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount:  notes.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(),
              );
            },
          ),
        );

  }
}
