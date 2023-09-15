part of 'todo_cubit.dart';

class TodoState extends Equatable {
  const TodoState({
    this.fetchingStatus = TodoStateStatus.initial,
    this.creatingStatus = TodoStateStatus.initial,
    this.deletingStatus = TodoStateStatus.initial,
    this.updatingStatus = TodoStateStatus.initial,
    this.todos,
    this.fethingFailure,
    this.creatingFailure,
    this.deletingFailure,
    this.updatingFailure,
  });

  final TodoStateStatus? fetchingStatus;
  final TodoStateStatus? creatingStatus;
  final TodoStateStatus? deletingStatus;
  final TodoStateStatus? updatingStatus;
  final List<Todo>? todos;
  final Failure? fethingFailure;
  final Failure? creatingFailure;
  final Failure? deletingFailure;
  final Failure? updatingFailure;

  TodoState copyWith({
    TodoStateStatus? fetchingStatus,
    TodoStateStatus? creatingStatus,
    TodoStateStatus? deletingStatus,
    TodoStateStatus? updatingStatus,
    List<Todo>? todos,
    Failure? fethingFailure,
    Failure? creatingFailure,
    Failure? deletingFailure,
    Failure? updatingFailure,
  }) {
    return TodoState(
      fetchingStatus: fetchingStatus ?? this.fetchingStatus,
      creatingStatus: creatingStatus ?? this.creatingStatus,
      deletingStatus: deletingStatus ?? this.deletingStatus,
      updatingStatus: updatingStatus ?? this.updatingStatus,
      todos: todos ?? this.todos,
      fethingFailure: fethingFailure ?? this.fethingFailure,
      creatingFailure: creatingFailure ?? this.creatingFailure,
      deletingFailure: deletingFailure ?? this.deletingFailure,
      updatingFailure: updatingFailure ?? this.updatingFailure,
    );
  }

  @override
  List<Object?> get props => [
        fetchingStatus,
        creatingStatus,
        deletingStatus,
        updatingStatus,
        todos,
        fethingFailure,
        creatingFailure,
        deletingFailure,
        updatingFailure,
      ];
}

enum TodoStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isFailure => this == failure;
}
