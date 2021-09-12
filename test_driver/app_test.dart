import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byTooltip('Increment');

    late FlutterDriver driver;

    Future<void> takeScreenshot(String targetFile) async {
      await driver.waitUntilNoTransientCallbacks();

      // Take the screenshot and store as a list of ints
      // Note: the image will be returned as a PNG
      final List<int> screenshotPixels = await driver.screenshot();

      // Write to a file
      final File screenshotFile = File(targetFile);
      await screenshotFile.writeAsBytes(screenshotPixels);
    }

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), '0');
      await takeScreenshot('0.png');
    });

    test('increments the counter', () async {
      await driver.tap(buttonFinder);
      expect(await driver.getText(counterTextFinder), '1');
      await takeScreenshot('1.png');
    });
  });
}
