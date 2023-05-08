import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:video_streaming/data/provider/video_repo_provider.dart';
import 'package:video_streaming/feature/home/page/home_page.dart';
import '../test_util/mock/repository_mock.mocks.dart';
import '../test_util/model_test.dart';
import '../test_util/util.dart';

void main() {
  late MockVideoRepo mockVideoRepo;

  final defaultVideoListModel = buildVideoListFromTemplate(
    videoResultList: [
      buildVideoResultFromTemplate(
        trackName: 'track name 1',
        artistName: 'artist name 1',
      ),
      buildVideoResultFromTemplate(
        trackName: 'track name 2',
        artistName: 'artist name 2',
      ),
      buildVideoResultFromTemplate(
        trackName: 'track name 3',
        artistName: 'artist name 3',
      ),
    ],
  );

  final searchTextField = find.byKey(const Key('HomeTextFieldKey'));

  setUp(() {
    mockVideoRepo = MockVideoRepo();
  });

  testWidgets('''
  Given the app opened,
  And Home Page shown,
  Then all UI will be displayed accordingly
   ''', (tester) async {
    await tester.pumpWidget(const TestApp(child: HomePage()));

    await tester.pumpAndSettle();

    expect(find.widgetWithText(TextField, 'Enter artist name'), findsOneWidget);
  });

  testWidgets('''
  Given the app opened,
  And there are videos available,
  Then the videos will show on the list
  ''', (tester) async {
    when(mockVideoRepo.getVideoList(any)).thenAnswer((_) async => defaultVideoListModel);

    await tester.pumpWidget(TestApp(
      overrides: [
        videoRepoProvider.overrideWithValue(mockVideoRepo),
      ],
      child: const HomePage(),
    ));

    await tester.pumpAndSettle();

    await tester.enterText(searchTextField, 'test search');
    await tester.testTextInput.receiveAction(TextInputAction.done);

    await tester.pumpAndSettle();

    expect(find.widgetWithText(VideoListItem, 'track name 1'), findsOneWidget);
    expect(find.widgetWithText(VideoListItem, 'artist name 1'), findsOneWidget);
    expect(find.widgetWithText(VideoListItem, 'track name 2'), findsOneWidget);
    expect(find.widgetWithText(VideoListItem, 'artist name 2'), findsOneWidget);
    expect(find.widgetWithText(VideoListItem, 'track name 3'), findsOneWidget);
    expect(find.widgetWithText(VideoListItem, 'artist name 3'), findsOneWidget);
  });
}
