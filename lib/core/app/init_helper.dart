import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection/injection.dart';
import '../logger/logger.dart';
import '../storage/storage.dart';
import 'bloc_observer.dart';

///Initializes all dependencies and configurations.
Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.init();
  configureDependencies();
  Bloc.observer = TodoAppBlocObserver();
  HiveClient.init();
}
