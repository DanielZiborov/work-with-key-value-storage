import 'package:shared_preferences/shared_preferences.dart';

abstract class _SharedPreferencesKeys {
  static const nameKey = 'name_key';
}

class ExampleWidgetModel {
  final _storage = SharedPreferences.getInstance();

  Future<void> readName() async {
    final storage = await _storage;
    final name = storage.getString(_SharedPreferencesKeys.nameKey);
    print(name);
  }

  Future<void> setName() async {
    final storage = await _storage;
    await storage.setString(_SharedPreferencesKeys.nameKey, 'Иван');
  }

  Future<void> readToken() async {}

  Future<void> setToken() async {}
}
