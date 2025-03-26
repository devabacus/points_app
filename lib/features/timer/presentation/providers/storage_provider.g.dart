// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storageServiceHash() => r'59b32f84fd174a075753345faf11593cb1274413';

/// See also [StorageService].
@ProviderFor(StorageService)
final storageServiceProvider = AutoDisposeAsyncNotifierProvider<
  StorageService,
  SharedPreferences
>.internal(
  StorageService.new,
  name: r'storageServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$storageServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StorageService = AutoDisposeAsyncNotifier<SharedPreferences>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
