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

import '../../features/todo/domain/usecases/create_todo_usecase.dart' as _i3;
import '../../features/todo/domain/usecases/delete_todo_usecase.dart' as _i4;
import '../../features/todo/domain/usecases/get_todos_usecase.dart' as _i5;
import '../../features/todo/domain/usecases/update_todo_status_usecase.dart'
    as _i6;
import '../../features/todo/domain/usecases/usecases.dart' as _i8;
import '../../features/todo/presentation/cubit/todo_cubit.dart' as _i7;

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
  gh.factory<_i3.CreateTodoUseCase>(() => _i3.CreateTodoUseCase());
  gh.factory<_i4.DeleteTodoUseCase>(() => _i4.DeleteTodoUseCase());
  gh.factory<_i5.GetTodosUseCase>(() => _i5.GetTodosUseCase());
  gh.factory<_i6.UpdateTodoStatusUseCase>(() => _i6.UpdateTodoStatusUseCase());
  gh.factory<_i7.TodoCubit>(() => _i7.TodoCubit(
        gh<_i8.GetTodosUseCase>(),
        gh<_i8.CreateTodoUseCase>(),
        gh<_i8.DeleteTodoUseCase>(),
        gh<_i8.UpdateTodoStatusUseCase>(),
      ));
  return getIt;
}
