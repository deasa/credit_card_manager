import 'package:flutter_test/flutter_test.dart';
import 'package:credit_card_manager/models/credit_card.dart';
import 'package:credit_card_manager/services/card_service.dart';

void main() {
  group('CardService', () {
    late CardService cardService;

    setUp(() {
      cardService = CardService();
    });

    test('adds a card to the list', () {
      CreditCard card = CreditCard(name: 'Card A', issuer: 'Bank A');
      cardService.addCard(card);

      List<CreditCard> cards = cardService.getCards();
      expect(cards.length, 1);
      expect(cards[0].name, 'Card A');
      expect(cards[0].issuer, 'Bank A');
    });

    test('returns a list of recommended cards', () {
      List<CreditCard> recommendedCards = cardService.getRecommendedCards();

      // Adjust the expected length based on the number of recommended cards in the dummy data
      expect(recommendedCards.length, 3);
    });
  });
}
