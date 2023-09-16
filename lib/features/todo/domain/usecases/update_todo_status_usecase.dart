import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../domain.dart';

@injectable
class UpdateTodoStatusUseCase {
  const UpdateTodoStatusUseCase(this._repository);

  final ITodoRepository _repository;

  Future<Either<Failure, Success>> call(int id, bool isCompleted) async {
    return _repository.updateTodoStatusUseCase(id, isCompleted);
  }
}
