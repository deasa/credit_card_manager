import 'package:flutter/material.dart';
import '../models/credit_card.dart';
import '../services/card_service.dart';

class RecommendedCardsScreen extends StatefulWidget {
  @override
  _RecommendedCardsScreenState createState() => _RecommendedCardsScreenState();
}

class _RecommendedCardsScreenState extends State<RecommendedCardsScreen> {
  CardService _cardService = CardService();
  late List<CreditCard> _recommendedCards;

  @override
  void initState() {
    super.initState();
    _recommendedCards = _cardService.getRecommendedCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Cards'),
      ),
      body: ListView.builder(
        itemCount: _recommendedCards.length,
        itemBuilder: (context, index) {
          CreditCard card = _recommendedCards[index];
          return Card(
            child: ListTile(
              title: Text(card.name),
              subtitle: Text(card.issuer),
            ),
          );
        },
      ),
    );
  }
}
