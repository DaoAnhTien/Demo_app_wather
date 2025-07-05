import 'package:intl/intl.dart';

int? parseInt(dynamic value) {
  if (value is int) {
    return value;
  }
  return (value != null && int.tryParse(value.toString()) != null)
      ? int.parse(value.toString())
      : null;
}

double? parseDouble(dynamic value) {
  if (value is double) {
    return value;
  }
  return (value != null && double.tryParse(value.toString()) != null)
      ? double.parse(value.toString())
      : null;
}

DateTime? parseDateTime(dynamic value) {
  return value != null ? DateTime.parse(value) : null;
}

bool? parseBool(dynamic value) {
  return value as bool?;
}

String? formatCurrency(double value) {
  return NumberFormat.currency(symbol: "\$", decimalDigits: 2).format(value);
}
