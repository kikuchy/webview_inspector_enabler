import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_inspector_enabler/webview_inspector_enabler.dart';

void main() {
  const MethodChannel channel = MethodChannel('webview_inspector_enabler');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WebviewInspectorEnabler.platformVersion, '42');
  });
}
