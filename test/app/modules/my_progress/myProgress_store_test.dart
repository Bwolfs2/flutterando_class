import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_class/app/modules/my_progress/myProgress_store.dart';
 
void main() {
  late MyProgressStore store;

  setUpAll(() {
    store = MyProgressStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}