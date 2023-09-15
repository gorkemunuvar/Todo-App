import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/errors/errors.dart';

import '../../domain/usecases/usecases.dart';
import '../../todo.dart';

part 'todo_state.dart';

@injectable
class TodoCubit extends Cubit<TodoState> {
  TodoCubit(
    this._getTodosUseCase,
    this._createTodoUseCase,
    this._deleteTodoUseCase,
    this._updateTodoUseCase,
  ) : super(const TodoState());

  final GetTodosUseCase _getTodosUseCase;
  final CreateTodoUseCase _createTodoUseCase;
  final DeleteTodoUseCase _deleteTodoUseCase;
  final UpdateTodoStatusUseCase _updateTodoUseCase;

  Future<void> init() async {}
}
