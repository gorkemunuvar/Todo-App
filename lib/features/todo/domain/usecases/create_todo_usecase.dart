import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../../todo.dart';

@injectable
class CreateTodoUseCase {
  const CreateTodoUseCase(this._repository);

  final ITodoRepository _repository;

  Future<Either<Failure, Success>> call(Todo todo) async {
    return _repository.createTodo(todo);
  }
}
