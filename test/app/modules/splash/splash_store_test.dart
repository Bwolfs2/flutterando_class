import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_class/app/modules/splash/splash_store.dart';
 
void main() {
  late SplashStore store;

  setUpAll(() {
    store = SplashStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}