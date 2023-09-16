import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../domain.dart';

@injectable
class DeleteTodoUseCase {
  const DeleteTodoUseCase(this._repository);

  final ITodoRepository _repository;

  Future<Either<Failure, Success>> call(todoId) async {
    return _repository.deleteTodo(todoId);
  }
}
