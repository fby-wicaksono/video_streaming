import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_streaming/data/network/api_client/video_api_client.dart';
import 'package:video_streaming/data/network/dio_client.dart';
import 'package:video_streaming/data/repository/video_repo.dart';

final videoApiClientProvider = Provider.autoDispose<VideoApiClient>((ref) => VideoApiClient(createDefaultDioClient()));

final videoRepoProvider = Provider.autoDispose<VideoRepo>((ref) {
  final restApiClient = ref.read(videoApiClientProvider);
  return VideoRepo(apiClient: restApiClient);
});