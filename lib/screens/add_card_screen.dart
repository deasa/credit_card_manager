// CoDev - A GPT 4.0 Virtual Developer, by twitter.com/@etherlegend

import 'package:flutter/material.dart';
import '../models/credit_card.dart';
import '../services/card_service.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final CardService _cardService = CardService();
  CreditCard _newCard = CreditCard();

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      _cardService.addCard(_newCard);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Credit Card'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a card name';
                  }
                  return null;
                },
                onSaved: (value) => _newCard.name = value,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Issuer'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter the card issuer';
                  }
                  return null;
                },
                onSaved: (value) => _newCard.issuer = value,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Number'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter the card number';
                  }
                  return null;
                },
                onSaved: (value) => _newCard.number = value,
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
