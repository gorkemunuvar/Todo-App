import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/errors.dart';
import '../entities/todo_entity.dart';

@injectable
class GetTodosUseCase {
  Future<Either<Failure, List<Todo>>> call() async {
    return const Right(_mockTodos);
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
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
  Todo(
    id: '4',
    title: 'Todo 4',
    isCompleted: false,
  ),
];
