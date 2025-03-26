// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timerStateHash() => r'6b53bbd003291a70e33ae49b459112e29408833e';

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
String _$timerHash() => r'04559a6fd30974d1fa98fb46d8421d54fe5a9d4c';

/// See also [Timer].
@ProviderFor(Timer)
final timerProvider =
    AutoDisposeNotifierProvider<Timer, TimerStateModel>.internal(
      Timer.new,
      name: r'timerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product') ? null : _$timerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Timer = AutoDisposeNotifier<TimerStateModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
