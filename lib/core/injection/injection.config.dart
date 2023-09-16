// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/todo/data/data_sources/data_sources.dart' as _i6;
import '../../features/todo/data/data_sources/todos_local_source.dart' as _i3;
import '../../features/todo/data/repositories/todo_repository.dart' as _i5;
import '../../features/todo/domain/domain.dart' as _i4;
import '../../features/todo/domain/repositories/todo_repository.dart' as _i12;
import '../../features/todo/domain/usecases/create_todo_usecase.dart' as _i8;
import '../../features/todo/domain/usecases/delete_todo_usecase.dart' as _i10;
import '../../features/todo/domain/usecases/get_todos_usecase.dart' as _i11;
import '../../features/todo/domain/usecases/update_todo_status_usecase.dart'
    as _i7;
import '../../features/todo/presentation/cubit/todo_cubit.dart' as _i13;
import '../../features/todo/todo.dart' as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ITodosLocalSource>(() => _i3.TodosLocalSource());
  gh.factory<_i4.ITodoRepository>(
      () => _i5.TodoRepository(gh<_i6.ITodosLocalSource>()));
  gh.factory<_i7.UpdateTodoStatusUseCase>(
      () => _i7.UpdateTodoStatusUseCase(gh<_i4.ITodoRepository>()));
  gh.factory<_i8.CreateTodoUseCase>(
      () => _i8.CreateTodoUseCase(gh<_i9.ITodoRepository>()));
  gh.factory<_i10.DeleteTodoUseCase>(
      () => _i10.DeleteTodoUseCase(gh<_i4.ITodoRepository>()));
  gh.factory<_i11.GetTodosUseCase>(
      () => _i11.GetTodosUseCase(gh<_i12.ITodoRepository>()));
  gh.factory<_i13.TodoCubit>(() => _i13.TodoCubit(
        gh<_i9.GetTodosUseCase>(),
        gh<_i9.CreateTodoUseCase>(),
        gh<_i9.DeleteTodoUseCase>(),
        gh<_i9.UpdateTodoStatusUseCase>(),
      ));
  return getIt;
}
