import 'package:objectbox/objectbox.dart';

import '../../domain/entities/entities.dart';

@Entity()
class TodoModel {
  TodoModel({
    this.id,
    required this.title,
    required this.isCompleted,
  });

  factory TodoModel.fromEntity(Todo entity) {
    return TodoModel(
      id: entity.id,
      title: entity.title,
      isCompleted: entity.isCompleted,
    );
  }

  int? id;
  final String title;
  final bool isCompleted;

  TodoModel copyWith({
    int? id,
    String? title,
    bool? isCompleted,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
