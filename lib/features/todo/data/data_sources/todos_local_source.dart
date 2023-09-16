import 'package:injectable/injectable.dart';

import '../../../../core/storage/hive_client.dart';
import '../models/models.dart';

abstract interface class ITodosLocalSource {
  Future<List<TodoModel>> getTodos();
  Future<void> createTodo(TodoModel todo);
  Future<void> deleteTodo(String todoId);
  Future<void> updateTodoStatusUseCase(String id, bool isCompleted);
}

@Injectable(as: ITodosLocalSource)
class TodosLocalSource implements ITodosLocalSource {
  const TodosLocalSource(this._storageClient);

  final IStorageClient _storageClient;

  @override
  Future<List<TodoModel>> getTodos() async {
    return _mockTodos;
  }

  @override
  Future<void> createTodo(TodoModel todo) async {}

  @override
  Future<void> deleteTodo(String todoId) async {}

  @override
  Future<void> updateTodoStatusUseCase(String id, bool isCompleted) async {}
}

const _mockTodos = [
  TodoModel(
    id: '1',
    title: 'Todo 1',
    isCompleted: false,
  ),
  TodoModel(
    id: '2',
    title: 'Todo 2',
    isCompleted: false,
  ),
  TodoModel(
    id: '3',
    title: 'Todo 3',
    isCompleted: true,
  ),
  TodoModel(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
];
