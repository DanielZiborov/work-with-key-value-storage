import 'package:shared_preferences/shared_preferences.dart';

class ExampleWidgetModel {
  final _storage = SharedPreferences.getInstance();

  Future<void> readName() async {
    final storage = await _storage;
    final name = storage.getString('name_key');
    print(name);
  }

  Future<void> setName() async {
    final storage = await _storage;
    await storage.setString('name_key', 'Иван');
  }

  Future<void> readToken() async {}

  Future<void> setToken() async {}
}
