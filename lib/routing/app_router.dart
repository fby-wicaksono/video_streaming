import 'package:auto_route/annotations.dart';
import 'package:video_streaming/feature/home/page/home_page.dart';
import 'package:video_streaming/feature/video_player/page/video_player_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/home',
      initial: true,
    ),
    AutoRoute(
      page: VideoPlayerPage,
      path: '/videoPlayerPage',
    ),
  ],
)
class $AppRouter {}