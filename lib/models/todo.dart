class ToDo {
  final int id;
  final String status;
  final String todoText;
  final String belongTo;

  const ToDo(
      {required this.id,
      required this.status,
      required this.todoText,
      required this.belongTo});

  factory ToDo.fromMap(Map<String, dynamic> map) {
    return ToDo(
      id: map['id'],
      status: map['status'],
      todoText: map['todo_text'],
      belongTo: map['belong_to'],
    );
  }
}
