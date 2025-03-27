// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  title: json['title'] as String,
  description: json['description'] as String,
  isCompleted: json['isCompleted'] as bool,
  onCreated: DateTime.parse(json['onCreated'] as String),
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'onCreated': instance.onCreated.toIso8601String(),
    };
