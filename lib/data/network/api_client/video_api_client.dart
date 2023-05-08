import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:video_streaming/data/model/video_list_model.dart';

part 'video_api_client.g.dart';

@RestApi()
abstract class VideoApiClient {
  factory VideoApiClient(Dio dio, {String baseUrl}) = _VideoApiClient;

  @GET('/search')
  Future<VideoListModel> getVideoList(
    @Query('term') String term,
    @Query('entity') String entity,
  );
}
