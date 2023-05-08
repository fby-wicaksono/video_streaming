import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_streaming/data/model/video_list_model.dart';
import 'package:video_streaming/feature/home/provider/home_page_provider.dart';
import 'package:video_streaming/feature/home/state_notifier/home_state.dart';
import 'package:video_streaming/routing/app_router.gr.dart';
import 'package:video_streaming/util/snackbar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _searchTextFieldController = TextEditingController();

  @override
  void dispose() {
    _searchTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(homeStateNotifierProvider);

    ref.listen(
      homeStateNotifierProvider,
      (_, state) {
        if (state is HomeStateFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            generalSnackbar('Failed to get videos'),
          );
        }
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                key: const Key('HomeTextFieldKey'),
                onSubmitted: (value) {
                  ref.read(homeStateNotifierProvider.notifier).getVideoList(value);
                },
                keyboardType: TextInputType.text,
                controller: _searchTextFieldController,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter artist name',
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              ...[
                state.maybeWhen(
                  loading: () => const CircularProgressIndicator(),
                  success: (videoListModel) => Expanded(
                    child: ListView.builder(
                      itemCount: videoListModel.results.length,
                      itemBuilder: (context, index) => VideoListItem(
                        resultModel: videoListModel.results[index],
                        onItemSelected: () => _onVideoListItemSelected(videoListModel.results[index]),
                      ),
                    ),
                  ),
                  orElse: () => const SizedBox(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _onVideoListItemSelected(Result resultModel) {
    if (resultModel.previewUrl == null){
      ScaffoldMessenger.of(context).showSnackBar(generalSnackbar('Video not available'));
      return;
    }

    context.router.push(VideoPlayerRoute(resultModel: resultModel));
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.resultModel,
    required this.onItemSelected,
  }) : super(key: key);

  final Result resultModel;
  final VoidCallback onItemSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onItemSelected,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                resultModel.trackName,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                resultModel.artistName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
