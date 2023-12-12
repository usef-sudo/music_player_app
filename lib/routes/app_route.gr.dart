// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(key: args.key),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    NowPlayingRoute.name: (routeData) {
      final args = routeData.argsAs<NowPlayingRouteArgs>(
          orElse: () => const NowPlayingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NowPlayingScreen(
          key: args.key,
          player: args.player,
          song: args.song,
        ),
      );
    },
    PodcastRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PodcastScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NowPlayingScreen]
class NowPlayingRoute extends PageRouteInfo<NowPlayingRouteArgs> {
  NowPlayingRoute({
    Key? key,
    AudioPlayer? player,
    SongModel? song,
    List<PageRouteInfo>? children,
  }) : super(
          NowPlayingRoute.name,
          args: NowPlayingRouteArgs(
            key: key,
            player: player,
            song: song,
          ),
          initialChildren: children,
        );

  static const String name = 'NowPlayingRoute';

  static const PageInfo<NowPlayingRouteArgs> page =
      PageInfo<NowPlayingRouteArgs>(name);
}

class NowPlayingRouteArgs {
  const NowPlayingRouteArgs({
    this.key,
    this.player,
    this.song,
  });

  final Key? key;

  final AudioPlayer? player;

  final SongModel? song;

  @override
  String toString() {
    return 'NowPlayingRouteArgs{key: $key, player: $player, song: $song}';
  }
}

/// generated route for
/// [PodcastScreen]
class PodcastRoute extends PageRouteInfo<void> {
  const PodcastRoute({List<PageRouteInfo>? children})
      : super(
          PodcastRoute.name,
          initialChildren: children,
        );

  static const String name = 'PodcastRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
