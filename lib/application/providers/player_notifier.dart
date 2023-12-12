
import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'player_notifier.g.dart';

@riverpod
class PlayerNotifier extends _$PlayerNotifier {
  @override
  AudioPlayer build() => AudioPlayer();

  void setSongPlayer(AudioPlayer player) => state = player;


}
