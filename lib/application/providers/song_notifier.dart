import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'song_notifier.g.dart';

@riverpod
class SongNotifier extends _$SongNotifier {
  @override
  int build() => -1;

  void setSongIndex(int i) => state = i;


}


