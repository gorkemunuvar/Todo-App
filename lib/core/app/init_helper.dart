import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection/injection.dart';
import '../logger/logger.dart';
import '../storage/objectbox_helper.dart';
import 'bloc_observer.dart';

late ObjectBox objectBox;

///Initializes all dependencies and configurations.
Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.init();
  configureDependencies();
  Bloc.observer = TodoAppBlocObserver();
  objectBox = await ObjectBox.create();
}
