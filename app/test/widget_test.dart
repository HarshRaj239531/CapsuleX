import 'package:flutter_test/flutter_test.dart';
import 'package:app/main.dart';

void main() {
  testWidgets('CapsuleX App Smoke Test', (WidgetTester tester) async {
    await tester.pumpWidget(const CapsuleXApp());
    expect(find.text('CapsuleX'), findsOneWidget);
    expect(find.text('Save Today, Unlock Tomorrow'), findsOneWidget);
  });
}
