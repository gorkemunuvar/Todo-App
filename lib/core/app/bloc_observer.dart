import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/logger.dart';

///[BlocObserver] that logs all bloc and cubit events.
///Helpful for debugging to see which state changes are happening and when.
class TodoAppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    AppLogger.wtf('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    AppLogger.error('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
