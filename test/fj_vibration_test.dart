import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fj_vibration/fj_vibration.dart';

void main() {
  const MethodChannel channel = MethodChannel('fj_vibration');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FjVibration.platformVersion, '42');
  });
}
