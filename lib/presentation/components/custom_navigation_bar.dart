import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:music_player/application/providers/song_notifier.dart';
import 'package:music_player/presentation/components/color.dart';
import 'package:music_player/presentation/components/constants.dart';
import 'package:music_player/routes/app_route.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../application/providers/player_notifier.dart';

class CustomNavigationBar extends HookConsumerWidget {
  final int? selectedIndex;
  final Function(int?)? navigate;
  const CustomNavigationBar({super.key, this.selectedIndex, this.navigate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(songNotifierProvider);
    final currentPlayer = ref.watch(playerNotifierProvider);

    return SizedBox(
      height: 125,
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          currentSong == -1
              ? const ResponsiveRowColumnItem(
                  child: SizedBox(
                  height: 60,
                ))
              : ResponsiveRowColumnItem(
                  columnFit: FlexFit.tight,
                  child: SizedBox(
                    height: 60,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: SizedBox(
                            child: Expanded(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    trackHeight: 20,
                                    thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 0)),
                                child: Slider(
                                  inactiveColor: Colors.transparent,
                                  activeColor:
                                      const Color.fromRGBO(247, 81, 145, 1),
                                  value: 0.7,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Colors.white.withOpacity(0.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: ListTile(
                                      onTap: () {
                                        context.router.push(NowPlayingRoute(
                                            player: currentPlayer,
                                            song: data[currentSong]));
                                      },
                                      leading: Image.asset("assets/1.png"),
                                      title: Row(children: [
                                        Expanded(
                                            child: Text(
                                          data[currentSong].title!,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/pause.svg",
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/next.svg",
                                          ),
                                        ),
                                      ]),
                                    )),
                              )),
                        ),
                      ],
                    ),
                  )),
          ResponsiveRowColumnItem(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 65,
              color: navigationBarColor,
              child: ResponsiveRowColumnItem(
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveRowColumnItem(
                        child: Column(
                      children: [
                        AnimatedSize(
                          duration: const Duration(milliseconds: 300),
                          reverseDuration: const Duration(milliseconds: 300),
                          child: IconButton(
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                              size: selectedIndex == 0 ? 30 : 22,
                            ),
                            onPressed: () {
                              navigate!(0);
                            },
                          ),
                        ),
                        if (selectedIndex == 0)
                          Container(
                            height: 2,
                            width: 30,
                            color: primaryColor,
                          )
                      ],
                    )),
                    ResponsiveRowColumnItem(
                        child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: selectedIndex == 1 ? 30 : 22,
                            ),
                            onPressed: () {
                              navigate!(1);
                            },
                          ),
                          if (selectedIndex == 1)
                            Container(
                              height: 2,
                              width: 30,
                              color: primaryColor,
                            )
                        ],
                      ),
                    )),
                    ResponsiveRowColumnItem(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: const Icon(
                          Icons.headphones,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                        child: AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      reverseDuration: const Duration(milliseconds: 300),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.podcasts,
                              color: Colors.white,
                              size: selectedIndex == 3 ? 30 : 22,
                            ),
                            onPressed: () {
                              navigate!(3);
                            },
                          ),
                          if (selectedIndex == 3)
                            Container(
                              height: 2,
                              width: 30,
                              color: primaryColor,
                            )
                        ],
                      ),
                    )),
                    ResponsiveRowColumnItem(
                        child: AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      reverseDuration: const Duration(milliseconds: 300),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: selectedIndex == 4 ? 30 : 22,
                            ),
                            onPressed: () {
                              navigate!(4);
                            },
                          ),
                          if (selectedIndex == 4)
                            Container(
                              height: 2,
                              width: 30,
                              color: primaryColor,
                            )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
