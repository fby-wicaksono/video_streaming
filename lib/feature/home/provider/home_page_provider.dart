import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_streaming/feature/home/state_notifier/home_state.dart';
import 'package:video_streaming/feature/home/state_notifier/home_state_notfier.dart';

final homeStateNotifierProvider =
    StateNotifierProvider.autoDispose<HomeStateNotifier, HomeState>((ref) => HomeStateNotifier(ref));
