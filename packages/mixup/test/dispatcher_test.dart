import 'package:flutter_test/flutter_test.dart';

import '../index.dart';

const valueString = 'HELLO';

main() {
  testWidgets("Dispatcher: basic usage", (WidgetTester tester) async {
    Dispatcher("SIMPLE_DISPATCHER");
  });
}
