import 'package:get_storage/get_storage.dart';

class onlineShopLocalStorage {
  static final onlineShopLocalStorage _instance =
      onlineShopLocalStorage._internal();
  factory onlineShopLocalStorage() {
    return _instance;
  }
  onlineShopLocalStorage._internal();
  final _storage = GetStorage();
  Future<void> sAveData<onlineShop>(String key, onlineShop value) async {
    await _storage.write(key, value);
  }

  onlineShop? readData<onlineShop>(String key) {
    return _storage.read<onlineShop>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
