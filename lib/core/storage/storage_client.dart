abstract class IStorageClient {
  Future<void> init();
  Future<void> put<T>(String boxName, String key, T value);
  Future<T> get<T>(String boxName, String key);
  Future<void> delete(String boxName, String key);
}
