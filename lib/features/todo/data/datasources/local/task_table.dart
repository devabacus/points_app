import 'package:drift/drift.dart';

class TaskItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
}

  // DateTimeColumn get createAt => dateTime().nullable()();



