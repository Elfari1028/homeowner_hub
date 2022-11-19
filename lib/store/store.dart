import 'package:get_storage/get_storage.dart';

class Store {
  static put(String key, dynamic value) {
    final box = GetStorage();
    box.write(key, value);
  }

  static read(String key) {
    final box = GetStorage();
    return box.read(key);
  }

  static putUsage(Map usage) {
    dynamic usages = read("usage-data");
    if (usages is List) {
      usages.add(usage);
      put("usage-data", usages);
    } else {
      put("usage-data", [usage]);
    }
  }

  static readUsage() {
    dynamic data = read("usage-data");
    if (data is List) {
      return data;
    } else {
      put("usage-data", []);
      return [];
    }
  }
}
