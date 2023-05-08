// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../data/model/video_list_model.dart' as _i5;
import '../feature/home/page/home_page.dart' as _i1;
import '../feature/video_player/page/video_player_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.VideoPlayerPage(
          key: args.key,
          resultModel: args.resultModel,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i3.RouteConfig(
          VideoPlayerRoute.name,
          path: '/videoPlayerPage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.VideoPlayerPage]
class VideoPlayerRoute extends _i3.PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    _i4.Key? key,
    required _i5.Result resultModel,
  }) : super(
          VideoPlayerRoute.name,
          path: '/videoPlayerPage',
          args: VideoPlayerRouteArgs(
            key: key,
            resultModel: resultModel,
          ),
        );

  static const String name = 'VideoPlayerRoute';
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({
    this.key,
    required this.resultModel,
  });

  final _i4.Key? key;

  final _i5.Result resultModel;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{key: $key, resultModel: $resultModel}';
  }
}
