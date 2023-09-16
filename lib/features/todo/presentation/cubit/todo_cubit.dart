import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

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

  Future<void> init() async {
    await _fetchTodos();
  }

  Future<void> _fetchTodos() async {
    emit(state.copyWith(fetchingStatus: TodoStateStatus.loading));

    final failureOrTodos = await _getTodosUseCase();
    failureOrTodos.fold(
      (failure) => emit(state.copyWith(fetchingStatus: TodoStateStatus.failure)),
      (todos) => emit(state.copyWith(fetchingStatus: TodoStateStatus.success, todos: todos)),
    );
  }

  Future<void> createTodo(Todo todo) async {
    emit(state.copyWith(creatingStatus: TodoStateStatus.loading));

    final failureOrTodo = await _createTodoUseCase(todo);
    failureOrTodo.fold(
      (failure) => emit(state.copyWith(creatingStatus: TodoStateStatus.failure)),
      (success) {
        final todos = <Todo>[todo, ...state.todos ?? []];
        emit(state.copyWith(creatingStatus: TodoStateStatus.success, todos: todos));
      },
    );
  }

  Future<void> deleteTodo(int todoId) async {
    emit(state.copyWith(deletingStatus: TodoStateStatus.loading));

    final failureOrTodo = await _deleteTodoUseCase(todoId);
    failureOrTodo.fold(
      (failure) => emit(state.copyWith(deletingStatus: TodoStateStatus.failure)),
      (success) {
        final todos = state.todos!.where((todo) => todo.id != todoId).toList();
        emit(state.copyWith(deletingStatus: TodoStateStatus.success, todos: todos));
      },
    );
  }

  Future<void> updateTodoStatus(int todoId, bool isCompleted) async {
    emit(state.copyWith(updatingStatus: TodoStateStatus.loading));

    final failureOrTodo = await _updateTodoUseCase(todoId, isCompleted);
    failureOrTodo.fold(
      (failure) => emit(state.copyWith(updatingStatus: TodoStateStatus.failure)),
      (success) {
        final todos = state.todos!.map((todo) {
          return todo.id == todoId ? todo.copyWith(isCompleted: isCompleted) : todo;
        }).toList();
        emit(state.copyWith(updatingStatus: TodoStateStatus.success, todos: todos));
      },
    );
  }
}
