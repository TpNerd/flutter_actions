import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Hello Adapta', () {
    test('Just print base url', () async {
      String? platformBaseUrl = Platform.environment['BASE_URL'];
      String? platExec = Platform.environment['EXEC_ENV'];

      const baseUrl = String.fromEnvironment('BASE_URL');
      const envExec = String.fromEnvironment('EXEC_ENV');

      print('platformBaseUrl from platform: $platformBaseUrl');
      print('platExec $platExec');

      print('baseUrl from env: $baseUrl');
      print('envExec $envExec');
    });
  });
}
