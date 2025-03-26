// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimerStateModel _$TimerStateModelFromJson(Map<String, dynamic> json) =>
    _TimerStateModel(
      remainingSeconds: (json['remainingSeconds'] as num).toInt(),
      status: $enumDecode(_$TimerStateEnumEnumMap, json['status']),
      initialValue: (json['initialValue'] as num).toInt(),
    );

Map<String, dynamic> _$TimerStateModelToJson(_TimerStateModel instance) =>
    <String, dynamic>{
      'remainingSeconds': instance.remainingSeconds,
      'status': _$TimerStateEnumEnumMap[instance.status]!,
      'initialValue': instance.initialValue,
    };

const _$TimerStateEnumEnumMap = {
  TimerStateEnum.running: 'running',
  TimerStateEnum.paused: 'paused',
  TimerStateEnum.resume: 'resume',
  TimerStateEnum.finish: 'finish',
  TimerStateEnum.reset: 'reset',
};
