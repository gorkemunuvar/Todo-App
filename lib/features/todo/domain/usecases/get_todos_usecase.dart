import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../entities/todo_entity.dart';
import '../repositories/todo_repository.dart';

@injectable
class GetTodosUseCase {
  const GetTodosUseCase(this._repository);

  final ITodoRepository _repository;

  Future<Either<Failure, List<Todo>>> call() async {
    return _repository.getTodos();
  }
}
