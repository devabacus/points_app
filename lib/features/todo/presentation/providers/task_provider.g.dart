// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskListStreamHash() => r'64c1cede60906998bcfb18bf09b661954d709574';

/// See also [taskListStream].
@ProviderFor(taskListStream)
final taskListStreamProvider =
    AutoDisposeStreamProvider<List<TaskItem>>.internal(
      taskListStream,
      name: r'taskListStreamProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$taskListStreamHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TaskListStreamRef = AutoDisposeStreamProviderRef<List<TaskItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
