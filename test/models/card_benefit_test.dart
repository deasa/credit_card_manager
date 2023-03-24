import 'package:flutter_test/flutter_test.dart';
import '../lib/models/card_benefit.dart';

void main() {
  group('CardBenefit', () {
    test('creates a card benefit with given values', () {
      CardBenefit benefit = CardBenefit(
        title: 'Benefit A',
        description: 'Benefit A description',
      );

      expect(benefit.title, 'Benefit A');
      expect(benefit.description, 'Benefit A description');
    });
  });
}
