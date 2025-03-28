// dart format width=80
import 'package:drift/internal/versioned_schema.dart' as i0;
import 'package:drift/drift.dart' as i1;
import 'package:drift/drift.dart'; // ignore_for_file: type=lint,unused_import

// GENERATED BY drift_dev, DO NOT MODIFY.
final class Schema2 extends i0.VersionedSchema {
  Schema2({required super.database}) : super(version: 2);
  @override
  late final List<i1.DatabaseSchemaEntity> entities = [taskItems];
  late final Shape0 taskItems = Shape0(
    source: i0.VersionedTable(
      entityName: 'task_items',
      withoutRowId: false,
      isStrict: false,
      tableConstraints: [],
      columns: [_column_0, _column_1, _column_2, _column_3],
      attachedDatabase: database,
    ),
    alias: null,
  );
}

class Shape0 extends i0.VersionedTable {
  Shape0({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get title =>
      columnsByName['title']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get description =>
      columnsByName['description']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get createAt =>
      columnsByName['create_at']! as i1.GeneratedColumn<DateTime>;
}

i1.GeneratedColumn<int> _column_0(String aliasedName) =>
    i1.GeneratedColumn<int>(
      'id',
      aliasedName,
      false,
      hasAutoIncrement: true,
      type: i1.DriftSqlType.int,
      defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
        'PRIMARY KEY AUTOINCREMENT',
      ),
    );
i1.GeneratedColumn<String> _column_1(String aliasedName) =>
    i1.GeneratedColumn<String>(
      'title',
      aliasedName,
      false,
      type: i1.DriftSqlType.string,
    );
i1.GeneratedColumn<String> _column_2(String aliasedName) =>
    i1.GeneratedColumn<String>(
      'description',
      aliasedName,
      false,
      type: i1.DriftSqlType.string,
    );
i1.GeneratedColumn<DateTime> _column_3(String aliasedName) =>
    i1.GeneratedColumn<DateTime>(
      'create_at',
      aliasedName,
      true,
      type: i1.DriftSqlType.dateTime,
    );
i0.MigrationStepWithVersion migrationSteps({
  required Future<void> Function(i1.Migrator m, Schema2 schema) from1To2,
}) {
  return (currentVersion, database) async {
    switch (currentVersion) {
      case 1:
        final schema = Schema2(database: database);
        final migrator = i1.Migrator(database, schema);
        await from1To2(migrator, schema);
        return 2;
      default:
        throw ArgumentError.value('Unknown migration from $currentVersion');
    }
  };
}

i1.OnUpgrade stepByStep({
  required Future<void> Function(i1.Migrator m, Schema2 schema) from1To2,
}) => i0.VersionedSchema.stepByStepHelper(
  step: migrationSteps(from1To2: from1To2),
);
