import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage_provider.g.dart';



@riverpod
class StorageService extends _$StorageService {
  @override
  Future<SharedPreferences> build() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> saveInt(String key, int val) async {
    final pref = await future;
    return await pref.setInt(key, val);
  }

  Future<int?> getInt(String key) async {
    final pref = await future;
    return pref.getInt(key);
  }
}

