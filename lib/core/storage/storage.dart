import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'hive_client.dart';

@Injectable(as: IStorageClient)
class HiveClient implements IStorageClient {
  static Future<void> init() async {
    await Hive.initFlutter();
  }

  @override
  Future<void> put<T>(String boxName, String key, T value) async {
    final box = await Hive.openBox(boxName);
    await box.put(key, value);
  }

  @override
  Future<T> get<T>(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    return box.get(key);
  }

  @override
  Future<void> delete(String boxName, String key) async {
    final box = await Hive.openBox(boxName);
    await box.delete(key);
  }
}
