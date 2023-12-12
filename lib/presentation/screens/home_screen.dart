import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/application/providers/audioplayer_provider.dart';
import 'package:music_player/domain/songs/song_model.dart';
import 'package:music_player/presentation/components/color.dart';
import 'package:music_player/presentation/components/constants.dart';
import 'package:music_player/presentation/components/home_app_bar.dart';
import 'package:music_player/routes/app_route.dart';

import '../../application/providers/player_notifier.dart';
import '../../application/providers/song_notifier.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  HomeScreen({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _songs = useState<List<SongModel>>(data);
    final currentSong = useState(-1);
    // final init =
    //     ref.watch(InitProvider(_songs.value[currentSong.value].path!, player));
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SizedBox(
          child: ListView.builder(
            itemCount: _songs.value.length,
            itemBuilder: (context, index) {
              final song = _songs.value[index];
              return Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: StreamBuilder<PlayerState>(
                  stream: player.playerStateStream,
                  builder: (context, snapshot) {
                    final playerState = snapshot.data;
                    final processingState = playerState?.processingState;
                    final playing = playerState?.playing;
                    return ListTile(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        onTap: () {
                          if (currentSong.value != index) {
                            currentSong.value = index;
                            ref.read(InitProvider(
                                    _songs.value[currentSong.value].path!,
                                    player)
                                .future);
                            ref
                                .read(songNotifierProvider.notifier)
                                .setSongIndex(index);

                            ref
                                .read(playerNotifierProvider.notifier)
                                .setSongPlayer(player);

                            player.play();
                          } else {
                            context.router.push(NowPlayingRoute(
                                player: player,
                                song: _songs.value[currentSong.value]));
                          }
                        },
                        tileColor: currentSong.value == index
                            ? Colors.white.withOpacity(0.1)
                            : Colors.transparent,
                        title: Text(
                          song.title!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          song.artist!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ),
                        leading: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (currentSong.value == index && playing!)
                                ? primaryColor
                                : Colors.white,
                          ),
                          child: currentSong.value == index
                              ? (processingState == ProcessingState.loading ||
                                      processingState ==
                                          ProcessingState.buffering)
                                  ? const SizedBox.shrink()
                                  : playing != true
                                      ? const Icon(
                                          Icons.play_arrow,
                                          color: primaryColor,
                                          size: 16,
                                        )
                                      : processingState !=
                                              ProcessingState.completed
                                          ? const Icon(
                                              Icons.pause,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          : const Icon(
                                              Icons.replay,
                                              color: primaryColor,
                                              size: 16,
                                            )
                              : IconButton(
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: primaryColor,
                                  ),
                                  iconSize: 16.0,
                                  onPressed: () async {
                                    currentSong.value = index;
                                    ref.read(InitProvider(
                                            _songs
                                                .value[currentSong.value].path!,
                                            player)
                                        .future);
                                    player.play();
                                  },
                                ),
                        ),
                        trailing: Text(
                          song.length.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 13),
                        ));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
