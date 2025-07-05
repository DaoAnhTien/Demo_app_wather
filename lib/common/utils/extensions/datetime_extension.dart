import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String format(String format) {
    final DateFormat formatter = DateFormat(format);
    final String formatted = formatter.format(toLocal());
    return formatted;
  }

  String toDDMMYYYYString() {
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(toLocal());
    return formatted;
  }

  String eventTimeFormat() {
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    final String formatted = formatter.format(toLocal());
    return formatted;
  }

  String toYYYYMMDDString() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(toLocal());
    return formatted;
  }

  String toyMMMMdEtring() {
    final DateFormat formatter = DateFormat("y,MMMM d,E");
    final String formatted = formatter.format(toLocal());
    return formatted;
  }
}
