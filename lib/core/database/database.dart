import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:points_app/features/todo/data/datasources/local/task_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [TaskItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? excutor]) : super(excutor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if(from < 2){
          await m.addColumn(taskItems, taskItems.createAt);
        }
      }
    );
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'points_app');
  }
}
