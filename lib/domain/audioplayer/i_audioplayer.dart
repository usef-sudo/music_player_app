import 'package:just_audio/just_audio.dart';
import 'package:music_player/domain/position/position_model.dart';

abstract class IAudioPlayer {
  Future<void> init({required String path, required AudioPlayer player});
  Stream<PositionModel?> positionDataStream({required AudioPlayer player});
}
