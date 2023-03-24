import 'package:flutter_test/flutter_test.dart';
import '../lib/models/credit_card.dart';

void main() {
  group('CreditCard', () {
    test('creates a credit card with default values', () {
      CreditCard card = CreditCard();

      expect(card.name, '');
      expect(card.issuer, '');
      expect(card.number, '');
      expect(card.benefits, []);
    });

    test('creates a credit card with given values', () {
      CreditCard card = CreditCard(
        name: 'Card A',
        issuer: 'Bank A',
        number: '1234567890123456',
        benefits: [
          CardBenefit(title: 'Benefit A', description: 'Benefit A description'),
        ],
      );

      expect(card.name, 'Card A');
      expect(card.issuer, 'Bank A');
      expect(card.number, '1234567890123456');
      expect(card.benefits.length, 1);
      expect(card.benefits[0].title, 'Benefit A');
      expect(card.benefits[0].description, 'Benefit A description');
    });
  });
}
