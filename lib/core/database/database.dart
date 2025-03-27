
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:points_app/features/todo/data/datasources/local/task_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [TaskItem])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? excutor]) : super(excutor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'points_app',
    );
  }
}

