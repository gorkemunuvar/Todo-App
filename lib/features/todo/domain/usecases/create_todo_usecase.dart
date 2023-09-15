import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../entities/todo_entity.dart';

@injectable
class CreateTodoUseCase {
  Future<Either<Failure, Success>> call(Todo todo) async {
    return const Right(Success());
  }
}
