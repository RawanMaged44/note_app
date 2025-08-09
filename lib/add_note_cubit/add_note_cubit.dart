import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_application_hive/models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());
  try {
    emit(AddNoteValidationError());
    var notesBox =Hive.box<NoteModel>('notes_box');
    await notesBox.add(note);
    emit(AddNoteSuccess());
  } catch (e) {
    emit(AddNoteFailure(e.toString()));
  }

  }
}
