import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/domain/position/position_model.dart';
import 'package:music_player/domain/songs/song_model.dart';
import 'package:music_player/presentation/screens/home_screen.dart';
import 'package:music_player/presentation/screens/router_screen.dart';
import 'package:music_player/presentation/screens/playing_screen.dart';
import 'package:music_player/presentation/screens/podcast_screen.dart';
import 'package:music_player/presentation/screens/search_screen.dart';
import 'package:music_player/presentation/screens/settings_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: NowPlayingRoute.page,
            type: RouteType.custom(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(-1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ))),
        AutoRoute(
            initial: true,
            page: MainRoute.page,
            type: defaultRouteType,
            children: [
              AutoRoute(
                initial: true,
                page: HomeRoute.page,
                type: defaultRouteType,
              ),
              AutoRoute(
                page: SearchRoute.page,
                type: defaultRouteType,
              ),
              AutoRoute(
                page: HomeRoute.page,
                type: defaultRouteType,
              ),
              AutoRoute(
                page: PodcastRoute.page,
                type: defaultRouteType,
              ),
              AutoRoute(
                page: SettingsRoute.page,
                type: defaultRouteType,
              ),
            ])
      ];
}
