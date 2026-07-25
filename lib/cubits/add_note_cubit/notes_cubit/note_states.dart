import 'package:notes_app/models/notes_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  NotesSuccess(this.notes);

  final List<NoteModel> notes;
}

