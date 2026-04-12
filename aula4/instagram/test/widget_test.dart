import 'package:flutter_test/flutter_test.dart';
import 'package:instagram/main.dart';
import 'package:instagram/pages/home.dart';

void main() {
  testWidgets('Verifica se a Home carrega corretamente', (WidgetTester tester) async {
    // Constrói a app.
    await tester.pumpWidget(const Instagram());

    // Verifica se encontra o widget da Home.
    expect(find.byType(Home), findsOneWidget);
  });
}