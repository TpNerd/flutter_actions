import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:integration_test/integration_test.dart';
import 'package:flutter_actions/main.dart' as app;

void main() async {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding();

  group('end-to-end test', () {
    testWidgets('just check if pushed text is on screen',
        (WidgetTester tester) async {
      String platformName = '';
      if (!kIsWeb) {
        if (Platform.isAndroid) {
          await binding.convertFlutterSurfaceToImage();
          platformName = 'android';
        } else {
          platformName = 'ios';
        }
      } else {
        platformName = 'web';
      }

      app.main();
      await tester.pumpAndSettle();

      await binding.takeScreenshot('1-home-$platformName');
      expect(find.textContaining('pushed'), findsOneWidget);
    });
  });
}
