import 'package:notes_app/models/notes_model.dart';

abstract class NotesState {}

class NoteInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

class NoteFailure extends NotesState {
  final String errorMessage;

  NoteFailure(this.errorMessage);
}