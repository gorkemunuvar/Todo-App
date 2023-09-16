import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/domain.dart';

@Injectable(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    return const Right(_mockTodos);
  }

  @override
  Future<Either<Failure, Success>> createTodo(Todo todo) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const Right(Success()),
    );
  }

  @override
  Future<Either<Failure, Success>> deleteTodo(String todoId) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const Right(Success()),
    );
  }

  @override
  Future<Either<Failure, Success>> updateTodoStatusUseCase(String id, bool isCompleted) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const Right(Success()),
    );
  }
}

const _mockTodos = [
  Todo(
    id: '1',
    title: 'Todo 1',
    isCompleted: false,
  ),
  Todo(
    id: '2',
    title: 'Todo 2',
    isCompleted: false,
  ),
  Todo(
    id: '3',
    title: 'Todo 3',
    isCompleted: true,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
];
