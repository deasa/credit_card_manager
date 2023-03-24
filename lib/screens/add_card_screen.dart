import 'package:flutter/material.dart';
import '../models/credit_card.dart';
import '../services/card_service.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _formKey = GlobalKey<FormState>();
  CardService _cardService = CardService();
  CreditCard _newCard = CreditCard();

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      _cardService.addCard(_newCard);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Card'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Name'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter the card name';
                  }
                  return null;
                },
                onSaved: (value) => _newCard.name = value ?? '',
              ),
              // Add more fields for issuer, number, and benefits
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Add Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
