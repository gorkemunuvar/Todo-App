import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';

@injectable
class UpdateTodoStatusUseCase {
  Future<Either<Failure, Success>> call(String id, bool isCompleted) async {
    return const Right(Success());
  }
}
