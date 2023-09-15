import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';

@injectable
class DeleteTodoUseCase {
  Future<Either<Failure, Success>> call(todoId) async {
    return const Right(Success());
  }
}
