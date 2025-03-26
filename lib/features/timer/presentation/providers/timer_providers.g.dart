// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timerStateHash() => r'51a009ac44c6d7010cb0dadda4263ed1b4db2d78';

/// See also [TimerState].
@ProviderFor(TimerState)
final timerStateProvider =
    AutoDisposeNotifierProvider<TimerState, TimerStateEnum>.internal(
      TimerState.new,
      name: r'timerStateProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$timerStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$TimerState = AutoDisposeNotifier<TimerStateEnum>;
String _$timerHash() => r'88eb8ed7d14103955ade1e69f0ebc8ba30a72eec';

/// See also [Timer].
@ProviderFor(Timer)
final timerProvider = AutoDisposeNotifierProvider<Timer, int>.internal(
  Timer.new,
  name: r'timerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$timerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Timer = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
