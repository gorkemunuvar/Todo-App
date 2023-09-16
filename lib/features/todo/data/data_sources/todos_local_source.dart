import 'package:injectable/injectable.dart';
import '../../../../core/app/init_helper.dart';

import '../../../../core/storage/objectbox_client.dart';
import '../models/models.dart';

abstract interface class ITodosLocalSource {
  Future<List<TodoModel>> getTodos();
  Future<void> createTodo(TodoModel todo);
  Future<void> deleteTodo(int id);
  Future<void> updateTodoStatusUseCase(int id, bool isCompleted);
}

@Injectable(as: ITodosLocalSource)
class TodosLocalSource implements ITodosLocalSource {
  TodosLocalSource(this._storageClient);

  final IStorageClient _storageClient;

  final _box = objectBox.store.box<TodoModel>();

  @override
  Future<List<TodoModel>> getTodos() async {
    return _box.getAll();
  }

  @override
  Future<void> createTodo(TodoModel todo) async {
    _box.put(todo);
  }

  @override
  Future<void> deleteTodo(int id) async {
    _box.remove(id);
  }

  @override
  Future<void> updateTodoStatusUseCase(int id, bool isCompleted) async {
    final todo = _box.get(id);
    if (todo != null) {
      _box.remove(id);
      final updatedTodo = todo.copyWith(isCompleted: isCompleted);
      _box.put(updatedTodo);
    }
  }
}
