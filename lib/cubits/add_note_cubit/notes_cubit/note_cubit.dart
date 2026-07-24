import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit/note_states.dart';
import 'package:notes_app/models/notes_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

List<NoteModel>? notes;

  fetchAllNotes() async {
    
      var noteBox=Hive.box<NoteModel>(kNotesBox);
      notes=noteBox.values.toList();
      
 
  }
}
