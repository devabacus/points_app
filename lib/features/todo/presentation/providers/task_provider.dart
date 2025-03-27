import 'package:points_app/features/todo/presentation/providers/shared_pref_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'task_provider.g.dart';


@riverpod
class Tasker extends _$Tasker {
  @override
  Future<String> build() async{
    final textSaver = ref.watch(taskStorageProvider);
    
    return textSaver.;
  }

  void addTask(String val){
    final saver = ref.read(taskStorageProvider.notifier);
    state = val;
    saver.saveTask(val);
  }
}



