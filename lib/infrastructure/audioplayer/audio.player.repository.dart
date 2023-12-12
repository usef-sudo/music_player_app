import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/domain/audioplayer/i_audioplayer.dart';
import 'package:music_player/domain/position/position_model.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerRepository implements IAudioPlayer {
  @override
  Future<void> init({required String path, required AudioPlayer player}) async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    try {
      await player.setAudioSource(AudioSource.asset(path));
    } catch (e) {
      print(
          "---------------------------------------------------------------------Error loading audio source: $e");
    }
  }

  @override
  Stream<PositionModel> positionDataStream({required AudioPlayer player}) {
    return Rx.combineLatest3<Duration, Duration, Duration?, PositionModel>(
        player.positionStream,
        player.bufferedPositionStream,
        player.durationStream,
        (position, bufferedPosition, duration) => PositionModel(
            position: position,
            bufferedPosition: bufferedPosition,
            duration: duration ?? Duration.zero));
  }
}
