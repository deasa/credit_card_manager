import '../models/credit_card.dart';

class CardService {
  List<CreditCard> _cards = [];

  void addCard(CreditCard card) {
    _cards.add(card);
  }

  List<CreditCard> getCards() {
    return _cards;
  }

  List<CreditCard> getRecommendedCards() {
    // Dummy data for demonstration purposes
    List<CreditCard> recommendedCards = [
      CreditCard(name: 'Card A', issuer: 'Bank A'),
      CreditCard(name: 'Card B', issuer: 'Bank B'),
      CreditCard(name: 'Card C', issuer: 'Bank C'),
    ];

    // Add custom logic to filter recommended cards based on user's current cards and eligibility

    return recommendedCards;
  }
}
