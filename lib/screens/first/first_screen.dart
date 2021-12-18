//! This is file is meant for the first screen.
//! Parts of the code have been given. Complete the remaining.

import 'package:flutter/material.dart';
import '../../models/note.dart';

class FirstScreen extends StatefulWidget {
  final Note note;

  FirstScreen(this.note);
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var change= new List(20);
  bool signal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade200,
            child: Text(
              '4',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 4,//widget.note.mockNoteList.length,
        //itemBuilder: (context, index)
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          trailing: SizedBox(
            width: 110.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () =>((){
                    widget.note.mockNoteList[index] = Note(
                      title: widget.note.mockNoteList[index].title,
                      completed: !widget.note.mockNoteList[index].completed
                    );
                  }),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.blue,
                  ),
                  onPressed: () => setState((){
                    widget.note.mockNoteList.removeAt(index);
                  }),
                ),
              ],
            ),
          ),
          title: Text('Note title'),
          subtitle: Text('Note content'),
          onTap: () {},
          onLongPress: () {},
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.expand_less),
              tooltip: 'Show less. Hide notes content',
              onPressed: () {}),

          /* Notes: for the "Show More" icon use: Icons.menu */

          FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: 'Add a new note',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
