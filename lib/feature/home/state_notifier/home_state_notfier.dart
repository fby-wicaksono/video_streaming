import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_streaming/data/provider/video_repo_provider.dart';
import 'package:video_streaming/feature/home/state_notifier/home_state.dart';
import 'package:video_streaming/util/string_extension.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier(this.ref) : super(const HomeState.initial());

  final Ref ref;

  void getVideoList(String keyword) async {
    if (state is HomeStateLoading) {
      return;
    }

    state = const HomeStateLoading();

    try {
      final response = await ref.read(videoRepoProvider).getVideoList(keyword.toSearchFormat());
      state = HomeState.success(response);

    } on DioError catch(_) {
      state = const HomeState.failed();
    }
  }
}