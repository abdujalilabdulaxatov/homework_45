import 'package:homework/models/note_models.dart';
import 'package:homework/models/todo_models.dart';
import 'package:homework/views/widgets/note_widget.dart';

class NoteControllers {
  List<NoteModels> list = [
    NoteModels(
        title: 'maktabga borish', content: '2025-02-12', data: '2025-02-12'),
    NoteModels(title: 'uxlash', content: '2024-05-06', data: '2024-05-06'),
  ];

  void add(String title, String content, String data) {
    list.add(NoteModels(title: title, content: content, data: data));
  }

  void delete(int index) {
    list.removeAt(index);
  }

  void edit(String title, String content, String data, int index) {
    list[index].title = title;
    list[index].data = data;
    list[index].content = content;
  }
}
