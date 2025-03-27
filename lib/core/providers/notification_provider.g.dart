// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$showNotificationHash() => r'21009cd0811ef9107f05babfdf6acb2c0e44b12d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [showNotification].
@ProviderFor(showNotification)
const showNotificationProvider = ShowNotificationFamily();

/// See also [showNotification].
class ShowNotificationFamily extends Family<void> {
  /// See also [showNotification].
  const ShowNotificationFamily();

  /// See also [showNotification].
  ShowNotificationProvider call(String notifText, BuildContext context) {
    return ShowNotificationProvider(notifText, context);
  }

  @override
  ShowNotificationProvider getProviderOverride(
    covariant ShowNotificationProvider provider,
  ) {
    return call(provider.notifText, provider.context);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'showNotificationProvider';
}

/// See also [showNotification].
class ShowNotificationProvider extends AutoDisposeProvider<void> {
  /// See also [showNotification].
  ShowNotificationProvider(String notifText, BuildContext context)
    : this._internal(
        (ref) =>
            showNotification(ref as ShowNotificationRef, notifText, context),
        from: showNotificationProvider,
        name: r'showNotificationProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$showNotificationHash,
        dependencies: ShowNotificationFamily._dependencies,
        allTransitiveDependencies:
            ShowNotificationFamily._allTransitiveDependencies,
        notifText: notifText,
        context: context,
      );

  ShowNotificationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.notifText,
    required this.context,
  }) : super.internal();

  final String notifText;
  final BuildContext context;

  @override
  Override overrideWith(void Function(ShowNotificationRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ShowNotificationProvider._internal(
        (ref) => create(ref as ShowNotificationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        notifText: notifText,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _ShowNotificationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShowNotificationProvider &&
        other.notifText == notifText &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, notifText.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ShowNotificationRef on AutoDisposeProviderRef<void> {
  /// The parameter `notifText` of this provider.
  String get notifText;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _ShowNotificationProviderElement extends AutoDisposeProviderElement<void>
    with ShowNotificationRef {
  _ShowNotificationProviderElement(super.provider);

  @override
  String get notifText => (origin as ShowNotificationProvider).notifText;
  @override
  BuildContext get context => (origin as ShowNotificationProvider).context;
}

String _$notificationServiceHash() =>
    r'98a81d11906a267018e96958015c8f6c642c6bd2';

/// See also [NotificationService].
@ProviderFor(NotificationService)
final notificationServiceProvider =
    AutoDisposeNotifierProvider<NotificationService, void>.internal(
      NotificationService.new,
      name: r'notificationServiceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$notificationServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$NotificationService = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
