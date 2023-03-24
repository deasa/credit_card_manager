import 'package:flutter/material.dart';
import '../models/credit_card.dart';
import '../services/card_service.dart';

class CardBenefitsScreen extends StatefulWidget {
  @override
  _CardBenefitsScreenState createState() => _CardBenefitsScreenState();
}

class _CardBenefitsScreenState extends State<CardBenefitsScreen> {
  CardService _cardService = CardService();
  List<CreditCard> _cards;

  @override
  void initState() {
    super.initState();
    _cards = _cardService.getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Benefits'),
      ),
      body: ListView.builder(
        itemCount: _cards.length,
        itemBuilder: (context, index) {
          CreditCard card = _cards[index];
          return Card(
            child: ListTile(
              title: Text(card.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: card.benefits
                    .map((benefit) => Text(benefit.title))
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
