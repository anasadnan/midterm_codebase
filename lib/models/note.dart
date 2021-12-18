//! Define the model class here

class Note {
  String title;
  bool completed;

  List<Note> mockNoteList;

  Note({this.title, this.completed, this.mockNoteList});

  Note.copy(Note from): this(title: from.title, mockNoteList: [...from.mockNoteList]);

}
