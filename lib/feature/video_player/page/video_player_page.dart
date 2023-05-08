import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:video_streaming/data/model/video_list_model.dart';

import 'package:video_streaming/feature/video_player/provider/video_player_page_provider.dart';
import 'package:video_streaming/feature/video_player/state_notifier/video_player_state.dart';

class VideoPlayerPage extends ConsumerStatefulWidget {
  const VideoPlayerPage({
    Key? key,
    required this.resultModel,
  }) : super(key: key);

  final Result resultModel;

  @override
  ConsumerState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends ConsumerState<VideoPlayerPage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);

      final videoUrl = widget.resultModel.previewUrl;

      if (videoUrl != null) {
        _videoPlayerController = VideoPlayerController.network(videoUrl);
        ref.read(videoPlayerStateNotifierProvider.notifier).initializeVideo(_videoPlayerController);
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _videoPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(videoPlayerStateNotifierProvider);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          if (state is VideoPlayerStateSuccess) ...[
            AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text(_videoPlayerController.value.isPlaying ? 'Pause' : 'Play'),
                onPressed: () {
                  ref.read(videoPlayerStateNotifierProvider.notifier).setVideoPlayingStatus(_videoPlayerController);
                },
              ),
            ),
          ],
          if (state is VideoPlayerStateLoading) ...[
            const Positioned(
              height: 40.0,
              width: 40.0,
              child: CircularProgressIndicator(),
            ),
          ],
          if (state is VideoPlayerStateFailed) ...[
            _ErrorView(videoPlayerController: _videoPlayerController),
          ],
        ],
      ),
    );
  }
}

class _ErrorView extends ConsumerWidget {
  const _ErrorView({
    Key? key,
    required this.videoPlayerController,
  }) : super(key: key);

  final VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Unable to load video',
          style: textTheme.titleLarge,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(videoPlayerStateNotifierProvider.notifier).initializeVideo(videoPlayerController);
          },
          child: const Text('Refresh'),
        ),
      ],
    );
  }
}
