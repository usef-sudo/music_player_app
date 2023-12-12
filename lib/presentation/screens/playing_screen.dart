import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/application/providers/audioplayer_provider.dart';
import 'package:music_player/domain/songs/song_model.dart';
import 'package:music_player/presentation/components/color.dart';
import 'package:music_player/presentation/components/responsive.widget.dart';
import 'package:music_player/presentation/components/seekbar.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class NowPlayingScreen extends HookConsumerWidget {
  final AudioPlayer? player;
  final SongModel? song;
  const NowPlayingScreen({super.key, this.player, this.song});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stream = ref.watch(GetpositionProvider(player!));
    return ResponsiveWidget(
      child: Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                context.router.pop();
              },
            ),
            centerTitle: true,
            title: const Text(
              "Now PLAYING",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ]),
        
        body: SafeArea(
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                  columnFit: FlexFit.tight,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bg.png"),
                            fit: BoxFit.cover)),
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ResponsiveRowColumnItem(
                          child: Gap(
                            20,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Stack(
                            children: [
                              Positioned(
                                  child: SizedBox(
                                      height: 250,
                                      child: Image.asset("assets/wave.png"))),
                              Center(child: Image.asset("assets/11.png")),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ResponsiveRowColumnItem(
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.0),
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'FOLLOW',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ResponsiveRowColumnItem(
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.0),
                                    color:
                                        const Color.fromRGBO(247, 81, 145, 1),
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            247, 81, 145, 1)),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SHUFFLE PLAY',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  song!.title!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Gap(10),
                                Text(
                                  song!.artist!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                            child: stream.when(
                                data: (data) {
                                  final positionData = data;
                                  return Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            positionData!.position!
                                                .toString()
                                                .substring(3, 7),
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          rowFit: FlexFit.loose,
                                          child: SeekBar(
                                            duration: positionData.duration ??
                                                Duration.zero,
                                            position: positionData.position ??
                                                Duration.zero,
                                            bufferedPosition:
                                                positionData.bufferedPosition ??
                                                    Duration.zero,
                                            onChangeEnd: player!.seek,

                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            song!.length.toString(),
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                error: (error, stacktrace) =>
                                    const Text('error'),
                                loading: () =>
                                    const CircularProgressIndicator())),
                        ResponsiveRowColumnItem(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.skip_previous,
                                  size: 35,
                                ),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.fast_rewind_rounded,
                                  size: 35,
                                ),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                              StreamBuilder<PlayerState>(
                                stream: player!.playerStateStream,
                                builder: (context, snapshot) {
                                  final playerState = snapshot.data;
                                  final processingState =
                                      playerState?.processingState;
                                  final playing = playerState?.playing;
                                  return GestureDetector(
                                    onTap: () async {
                                      if (playing) {
                                        player!.pause();
                                      } else {
                                        player!.play();
                                      }
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(21),
                                        width: 72,
                                        height: 72,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: playing!
                                            ? const Icon(
                                                Icons.pause,
                                                size: 30,
                                                color: Colors.black,
                                              )
                                            : const Icon(
                                                Icons.play_arrow,
                                                size: 30,
                                                color: Colors.black,
                                              )),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.fast_forward_rounded,
                                  size: 35,
                                ),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.skip_next,
                                  size: 35,
                                ),
                                onPressed: () {},
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
