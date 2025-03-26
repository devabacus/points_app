// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimerStateModel {

 int get remainingSeconds; TimerStateEnum get status; int get initialValue;
/// Create a copy of TimerStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerStateModelCopyWith<TimerStateModel> get copyWith => _$TimerStateModelCopyWithImpl<TimerStateModel>(this as TimerStateModel, _$identity);

  /// Serializes this TimerStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerStateModel&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,remainingSeconds,status,initialValue);

@override
String toString() {
  return 'TimerStateModel(remainingSeconds: $remainingSeconds, status: $status, initialValue: $initialValue)';
}


}

/// @nodoc
abstract mixin class $TimerStateModelCopyWith<$Res>  {
  factory $TimerStateModelCopyWith(TimerStateModel value, $Res Function(TimerStateModel) _then) = _$TimerStateModelCopyWithImpl;
@useResult
$Res call({
 int remainingSeconds, TimerStateEnum status, int initialValue
});




}
/// @nodoc
class _$TimerStateModelCopyWithImpl<$Res>
    implements $TimerStateModelCopyWith<$Res> {
  _$TimerStateModelCopyWithImpl(this._self, this._then);

  final TimerStateModel _self;
  final $Res Function(TimerStateModel) _then;

/// Create a copy of TimerStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? remainingSeconds = null,Object? status = null,Object? initialValue = null,}) {
  return _then(_self.copyWith(
remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TimerStateEnum,initialValue: null == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TimerStateModel implements TimerStateModel {
  const _TimerStateModel({required this.remainingSeconds, required this.status, required this.initialValue});
  factory _TimerStateModel.fromJson(Map<String, dynamic> json) => _$TimerStateModelFromJson(json);

@override final  int remainingSeconds;
@override final  TimerStateEnum status;
@override final  int initialValue;

/// Create a copy of TimerStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerStateModelCopyWith<_TimerStateModel> get copyWith => __$TimerStateModelCopyWithImpl<_TimerStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimerStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerStateModel&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.status, status) || other.status == status)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,remainingSeconds,status,initialValue);

@override
String toString() {
  return 'TimerStateModel(remainingSeconds: $remainingSeconds, status: $status, initialValue: $initialValue)';
}


}

/// @nodoc
abstract mixin class _$TimerStateModelCopyWith<$Res> implements $TimerStateModelCopyWith<$Res> {
  factory _$TimerStateModelCopyWith(_TimerStateModel value, $Res Function(_TimerStateModel) _then) = __$TimerStateModelCopyWithImpl;
@override @useResult
$Res call({
 int remainingSeconds, TimerStateEnum status, int initialValue
});




}
/// @nodoc
class __$TimerStateModelCopyWithImpl<$Res>
    implements _$TimerStateModelCopyWith<$Res> {
  __$TimerStateModelCopyWithImpl(this._self, this._then);

  final _TimerStateModel _self;
  final $Res Function(_TimerStateModel) _then;

/// Create a copy of TimerStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? remainingSeconds = null,Object? status = null,Object? initialValue = null,}) {
  return _then(_TimerStateModel(
remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TimerStateEnum,initialValue: null == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
