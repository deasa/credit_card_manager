import 'card_benefit.dart';

class CreditCard {
  String name;
  String issuer;
  String number;
  List<CardBenefit> benefits;

  CreditCard({
    this.name = '',
    this.issuer = '',
    this.number = '',
    this.benefits = const [],
  });
}
