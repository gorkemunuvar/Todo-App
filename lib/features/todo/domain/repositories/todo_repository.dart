import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../domain.dart';

abstract interface class ITodoRepository {
  Future<Either<Failure, List<Todo>>> getTodos();
  Future<Either<Failure, Success>> createTodo(Todo todo);
  Future<Either<Failure, Success>> deleteTodo(int id);
  Future<Either<Failure, Success>> updateTodoStatusUseCase(int id, bool isCompleted);
}
