import 'dart:io';

import 'package:path_provider/path_provider.dart';

import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;

  ObjectBox._create(this.store);

  static Future<ObjectBox> create() async {
    final dbPath = await _getDatabaseDirectoryPath();
    final isStoreOpen = Store.isOpen(dbPath);

    late Store store;

    if (!isStoreOpen) {
      store = await openStore();
    } else {
      store = Store.attach(getObjectBoxModel(), dbPath);
    }

    return ObjectBox._create(store);
  }

  static Future<String> _getDatabaseDirectoryPath() async {
    final dir = await getApplicationDocumentsDirectory();

    // The default object box dir is inside the application documents dir,
    // under the `/objectbox` folder.
    return '${dir.path}${Platform.pathSeparator}objectbox';
  }
}
