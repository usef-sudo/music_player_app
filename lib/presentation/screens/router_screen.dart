import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:music_player/presentation/components/color.dart';
import 'package:music_player/presentation/components/custom_navigation_bar.dart';
import 'package:music_player/presentation/components/responsive.widget.dart';
import 'package:music_player/routes/app_route.dart';

@RoutePage()
class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        SearchRoute(),
        HomeRoute(),
        PodcastRoute(),
        SettingsRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return ResponsiveWidget(
          child: Scaffold(
            extendBody: true,
            backgroundColor: secondaryColor,
            body: child,
            bottomNavigationBar: CustomNavigationBar(
              navigate: (i) => tabsRouter.setActiveIndex(i!),
              selectedIndex: tabsRouter.activeIndex,
            ),
          ),
        );
      },
    );
  }
}
