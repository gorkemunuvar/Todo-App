import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/logger/logger.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/domain.dart';
import '../data_sources/data_sources.dart';
import '../models/models.dart';

@Injectable(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  const TodoRepository(this._localSource);

  final ITodosLocalSource _localSource;

  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    try {
      final todoModels = await _localSource.getTodos();
      final todos = todoModels.map(Todo.fromModel).toList();

      return Right(todos);
    } catch (error) {
      AppLogger.error('TodoRepository.getTodos', error);
      return Left(Failure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> createTodo(Todo todo) async {
    try {
      final todoModel = TodoModel.fromEntity(todo);
      _localSource.createTodo(todoModel);

      return const Right(Success());
    } catch (error) {
      AppLogger.error('TodoRepository.createTodo', error);
      return Left(Failure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteTodo(String todoId) async {
    try {
      _localSource.deleteTodo(todoId);

      return const Right(Success());
    } catch (error) {
      AppLogger.error('TodoRepository.deleteTodo', error);
      return Left(Failure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> updateTodoStatusUseCase(String id, bool isCompleted) async {
    try {
      _localSource.updateTodoStatusUseCase(id, isCompleted);

      return const Right(Success());
    } catch (error) {
      AppLogger.error('TodoRepository.updateTodoStatusUseCase', error);
      return Left(Failure(message: error.toString()));
    }
  }
}
