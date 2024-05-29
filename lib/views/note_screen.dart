import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework/controllers/note_controllers.dart';
import 'package:homework/views/drawer.dart';
import 'package:homework/views/widgets/note_widget.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  NoteControllers noteControllers = NoteControllers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Note',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
      body: ListView.builder(
          itemCount: noteControllers.list.length,
          itemBuilder: (ctx, index) {
            return NoteWidget(
                id: 0,
                noteModels: noteControllers.list[index],
                onDelete: () {
                  noteControllers.delete(index);
                  setState(() {});
                },
                onEdit: () {
                  noteControllers.edit('title', 'content', 'data', 1);
                  setState(() {});
                },
                onTapp: () {});
          }),
    );
  }
}
