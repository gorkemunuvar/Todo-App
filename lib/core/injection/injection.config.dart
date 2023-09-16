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

import '../../features/todo/data/data_sources/data_sources.dart' as _i8;
import '../../features/todo/data/data_sources/todos_local_source.dart' as _i5;
import '../../features/todo/data/repositories/todo_repository.dart' as _i7;
import '../../features/todo/domain/domain.dart' as _i6;
import '../../features/todo/domain/repositories/todo_repository.dart' as _i14;
import '../../features/todo/domain/usecases/create_todo_usecase.dart' as _i10;
import '../../features/todo/domain/usecases/delete_todo_usecase.dart' as _i12;
import '../../features/todo/domain/usecases/get_todos_usecase.dart' as _i13;
import '../../features/todo/domain/usecases/update_todo_status_usecase.dart'
    as _i9;
import '../../features/todo/presentation/cubit/todo_cubit.dart' as _i15;
import '../../features/todo/todo.dart' as _i11;
import '../storage/objectbox_client.dart' as _i3;
import '../storage/storage.dart' as _i4;

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
  gh.factory<_i3.IStorageClient>(() => _i4.ObjectBoxClient());
  gh.factory<_i5.ITodosLocalSource>(
      () => _i5.TodosLocalSource(gh<_i3.IStorageClient>()));
  gh.factory<_i6.ITodoRepository>(
      () => _i7.TodoRepository(gh<_i8.ITodosLocalSource>()));
  gh.factory<_i9.UpdateTodoStatusUseCase>(
      () => _i9.UpdateTodoStatusUseCase(gh<_i6.ITodoRepository>()));
  gh.factory<_i10.CreateTodoUseCase>(
      () => _i10.CreateTodoUseCase(gh<_i11.ITodoRepository>()));
  gh.factory<_i12.DeleteTodoUseCase>(
      () => _i12.DeleteTodoUseCase(gh<_i6.ITodoRepository>()));
  gh.factory<_i13.GetTodosUseCase>(
      () => _i13.GetTodosUseCase(gh<_i14.ITodoRepository>()));
  gh.factory<_i15.TodoCubit>(() => _i15.TodoCubit(
        gh<_i11.GetTodosUseCase>(),
        gh<_i11.CreateTodoUseCase>(),
        gh<_i11.DeleteTodoUseCase>(),
        gh<_i11.UpdateTodoStatusUseCase>(),
      ));
  return getIt;
}
