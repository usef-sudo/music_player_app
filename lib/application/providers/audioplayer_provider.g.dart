// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audioplayer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initHash() => r'48945f9c14422308355720a8347a594fbee03a1d';

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

/// See also [init].
@ProviderFor(init)
const initProvider = InitFamily();

/// See also [init].
class InitFamily extends Family<AsyncValue<void>> {
  /// See also [init].
  const InitFamily();

  /// See also [init].
  InitProvider call(
    String path,
    AudioPlayer player,
  ) {
    return InitProvider(
      path,
      player,
    );
  }

  @override
  InitProvider getProviderOverride(
    covariant InitProvider provider,
  ) {
    return call(
      provider.path,
      provider.player,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'initProvider';
}

/// See also [init].
class InitProvider extends AutoDisposeFutureProvider<void> {
  /// See also [init].
  InitProvider(
    String path,
    AudioPlayer player,
  ) : this._internal(
          (ref) => init(
            ref as InitRef,
            path,
            player,
          ),
          from: initProvider,
          name: r'initProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$initHash,
          dependencies: InitFamily._dependencies,
          allTransitiveDependencies: InitFamily._allTransitiveDependencies,
          path: path,
          player: player,
        );

  InitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.player,
  }) : super.internal();

  final String path;
  final AudioPlayer player;

  @override
  Override overrideWith(
    FutureOr<void> Function(InitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InitProvider._internal(
        (ref) => create(ref as InitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        player: player,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InitProvider &&
        other.path == path &&
        other.player == player;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InitRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `player` of this provider.
  AudioPlayer get player;
}

class _InitProviderElement extends AutoDisposeFutureProviderElement<void>
    with InitRef {
  _InitProviderElement(super.provider);

  @override
  String get path => (origin as InitProvider).path;
  @override
  AudioPlayer get player => (origin as InitProvider).player;
}

String _$getpositionHash() => r'9fef3172bc630c93fcfe2b96aeace3a79ccdc834';

/// See also [getposition].
@ProviderFor(getposition)
const getpositionProvider = GetpositionFamily();

/// See also [getposition].
class GetpositionFamily extends Family<AsyncValue<PositionModel?>> {
  /// See also [getposition].
  const GetpositionFamily();

  /// See also [getposition].
  GetpositionProvider call(
    AudioPlayer player,
  ) {
    return GetpositionProvider(
      player,
    );
  }

  @override
  GetpositionProvider getProviderOverride(
    covariant GetpositionProvider provider,
  ) {
    return call(
      provider.player,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getpositionProvider';
}

/// See also [getposition].
class GetpositionProvider extends AutoDisposeStreamProvider<PositionModel?> {
  /// See also [getposition].
  GetpositionProvider(
    AudioPlayer player,
  ) : this._internal(
          (ref) => getposition(
            ref as GetpositionRef,
            player,
          ),
          from: getpositionProvider,
          name: r'getpositionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getpositionHash,
          dependencies: GetpositionFamily._dependencies,
          allTransitiveDependencies:
              GetpositionFamily._allTransitiveDependencies,
          player: player,
        );

  GetpositionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.player,
  }) : super.internal();

  final AudioPlayer player;

  @override
  Override overrideWith(
    Stream<PositionModel?> Function(GetpositionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetpositionProvider._internal(
        (ref) => create(ref as GetpositionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        player: player,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<PositionModel?> createElement() {
    return _GetpositionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetpositionProvider && other.player == player;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetpositionRef on AutoDisposeStreamProviderRef<PositionModel?> {
  /// The parameter `player` of this provider.
  AudioPlayer get player;
}

class _GetpositionProviderElement
    extends AutoDisposeStreamProviderElement<PositionModel?>
    with GetpositionRef {
  _GetpositionProviderElement(super.provider);

  @override
  AudioPlayer get player => (origin as GetpositionProvider).player;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
