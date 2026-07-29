import 'package:flutter_test/flutter_test.dart';
import 'package:app/main.dart';

void main() {
  testWidgets('CapsuleX Complete Onboarding Flow Test (Pages 1, 2, and 3)',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CapsuleXApp());

    // 1. Verify Onboarding 1
    expect(find.text('CapsuleX'), findsOneWidget);
    expect(find.text('Save Today, Unlock Tomorrow'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);

    // Tap Get Started -> Navigate to Page 2
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // 2. Verify Onboarding 2
    expect(find.text('Photos'), findsOneWidget);
    expect(find.text('Videos'), findsOneWidget);
    expect(find.text('Audio'), findsOneWidget);
    expect(find.text('Letters'), findsOneWidget);
    expect(find.text('Documents'), findsOneWidget);
    expect(find.text('And More'), findsOneWidget);

    // Scroll down to click Next
    await tester.ensureVisible(find.text('Next'));
    await tester.pumpAndSettle();

    // Tap Next -> Navigate to Page 3
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();

    // 3. Verify Onboarding 3
    expect(find.text('Future Date'), findsOneWidget);
    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Milestone'), findsOneWidget);
    expect(find.text('People Approval'), findsOneWidget);
    expect(find.text('Password / PIN'), findsOneWidget);
    expect(find.text('Multiple Conditions'), findsOneWidget);
    expect(find.text('PRO'), findsOneWidget);
  });
}
