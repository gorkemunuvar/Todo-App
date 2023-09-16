import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

class Todo extends Equatable {
  const Todo({
    required this.id,
    required this.title,
    required this.isCompleted,
  }) : assert(title != '', 'Title cannot be empty');

  factory Todo.fromModel(TodoModel model) {
    return Todo(
      id: model.id,
      title: model.title,
      isCompleted: model.isCompleted,
    );
  }

  final String id;
  final String title;
  final bool isCompleted;

  @override
  List<Object?> get props => [id, title, isCompleted];

  Todo copyWith({
    String? id,
    String? title,
    bool? isCompleted,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
