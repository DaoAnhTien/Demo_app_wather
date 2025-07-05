import 'package:injectable/injectable.dart';

@lazySingleton
class CurrencyConfig {
  static const String kDefaultCurrencyCode = 'USD';
  static const List kSupportedCurrencies = [
    {
      "symbol": "\$",
      "text": "USD",
      "code": "USD",
    },
    {
      "symbol": "₹",
      "text": "INR",
      "code": "INR",
    },
    {
      "symbol": "đ",
      "text": "VND",
      "code": "VND",
    },
    {
      "symbol": "€",
      "text": "EUR",
      "code": "EUR",
    },
    {
      "symbol": "£",
      "text": "Pound sterling",
      "code": "GBP",
    },
    {
      'symbol': 'AR\$',
      'text': 'ARS',
      'code': 'ARS',
    },
    {
      'symbol': 'R',
      'text': 'ZAR',
      'code': 'ZAR',
    }
  ];
}
