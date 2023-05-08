import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_streaming/feature/video_player/state_notifier/video_player_state.dart';
import 'package:video_streaming/feature/video_player/state_notifier/video_player_state_notifier.dart';

final videoPlayerStateNotifierProvider = StateNotifierProvider.autoDispose<VideoPlayerStateNotifier, VideoPlayerState>(
    (ref) => VideoPlayerStateNotifier(ref));

final isVideoPlayingProvider = StateProvider<bool>((ref) => false);
