import 'package:flutter_test/flutter_test.dart';
import 'package:food_delivery/main.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('MyWidget has a title', (tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(const MyApp(titleApp: 'Food Delivery App'));

    // Create the Finders.
    const titleMyApp = MyApp(titleApp: 'Food Delivery App');

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(titleMyApp, findsOneWidget);
  });
}
