import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application_hive/notes_cubit/notes_cubit.dart';
import 'package:note_application_hive/widgets/custom_appbar.dart';

import '../models/note_model.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          CustomAppbar(title: 'Notes', icon: Icons.search),
           Expanded(
            child:  NotesListview(
                ),
          )
        ],
      ),
    );
  }
}
