import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/domain/audioplayer/i_audioplayer.dart';
import 'package:music_player/domain/position/position_model.dart';
import 'package:music_player/infrastructure/audioplayer/audio.player.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'audioplayer_provider.g.dart';

final audioplayerProvider =

    Provider<IAudioPlayer>((ref) => AudioPlayerRepository());

@riverpod
Future<void> init(InitRef ref, String path, AudioPlayer player) async {
  final audioprovider = ref.watch(audioplayerProvider);
  return audioprovider.init(path: path, player: player);
}

@riverpod
Stream<PositionModel?> getposition(GetpositionRef ref, AudioPlayer player) {
  final audioprovider = ref.watch(audioplayerProvider);
  return audioprovider.positionDataStream(player: player);
}


