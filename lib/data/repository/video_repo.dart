import 'package:video_streaming/data/model/video_list_model.dart';
import 'package:video_streaming/data/network/api_client/video_api_client.dart';

class VideoRepo {
  VideoRepo({required this.apiClient});

  final VideoApiClient apiClient;

  Future<VideoListModel> getVideoList(String keyword) {
    return apiClient.getVideoList(keyword, 'musicVideo');
  }
}

