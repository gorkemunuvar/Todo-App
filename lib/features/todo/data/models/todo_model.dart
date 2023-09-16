import '../../domain/entities/entities.dart';

class TodoModel {
  const TodoModel({
    required this.id,
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

  final String id;
  final String title;
  final bool isCompleted;
}
