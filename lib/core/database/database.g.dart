// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TaskItemTable extends TaskItem
    with TableInfo<$TaskItemTable, TaskItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'task_item';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskItemData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskItemData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      description:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}description'],
          )!,
    );
  }

  @override
  $TaskItemTable createAlias(String alias) {
    return $TaskItemTable(attachedDatabase, alias);
  }
}

class TaskItemData extends DataClass implements Insertable<TaskItemData> {
  final int id;
  final String title;
  final String description;
  const TaskItemData({
    required this.id,
    required this.title,
    required this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    return map;
  }

  TaskItemCompanion toCompanion(bool nullToAbsent) {
    return TaskItemCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
    );
  }

  factory TaskItemData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskItemData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  TaskItemData copyWith({int? id, String? title, String? description}) =>
      TaskItemData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  TaskItemData copyWithCompanion(TaskItemCompanion data) {
    return TaskItemData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskItemData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskItemData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description);
}

class TaskItemCompanion extends UpdateCompanion<TaskItemData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  const TaskItemCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  TaskItemCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
  }) : title = Value(title),
       description = Value(description);
  static Insertable<TaskItemData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
    });
  }

  TaskItemCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? description,
  }) {
    return TaskItemCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskItemCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TaskItemTable taskItem = $TaskItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [taskItem];
}

typedef $$TaskItemTableCreateCompanionBuilder =
    TaskItemCompanion Function({
      Value<int> id,
      required String title,
      required String description,
    });
typedef $$TaskItemTableUpdateCompanionBuilder =
    TaskItemCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> description,
    });

class $$TaskItemTableFilterComposer
    extends Composer<_$AppDatabase, $TaskItemTable> {
  $$TaskItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TaskItemTableOrderingComposer
    extends Composer<_$AppDatabase, $TaskItemTable> {
  $$TaskItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TaskItemTableAnnotationComposer
    extends Composer<_$AppDatabase, $TaskItemTable> {
  $$TaskItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$TaskItemTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TaskItemTable,
          TaskItemData,
          $$TaskItemTableFilterComposer,
          $$TaskItemTableOrderingComposer,
          $$TaskItemTableAnnotationComposer,
          $$TaskItemTableCreateCompanionBuilder,
          $$TaskItemTableUpdateCompanionBuilder,
          (
            TaskItemData,
            BaseReferences<_$AppDatabase, $TaskItemTable, TaskItemData>,
          ),
          TaskItemData,
          PrefetchHooks Function()
        > {
  $$TaskItemTableTableManager(_$AppDatabase db, $TaskItemTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TaskItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TaskItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$TaskItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
              }) => TaskItemCompanion(
                id: id,
                title: title,
                description: description,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String description,
              }) => TaskItemCompanion.insert(
                id: id,
                title: title,
                description: description,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TaskItemTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TaskItemTable,
      TaskItemData,
      $$TaskItemTableFilterComposer,
      $$TaskItemTableOrderingComposer,
      $$TaskItemTableAnnotationComposer,
      $$TaskItemTableCreateCompanionBuilder,
      $$TaskItemTableUpdateCompanionBuilder,
      (
        TaskItemData,
        BaseReferences<_$AppDatabase, $TaskItemTable, TaskItemData>,
      ),
      TaskItemData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TaskItemTableTableManager get taskItem =>
      $$TaskItemTableTableManager(_db, _db.taskItem);
}
