import 'package:injectable/injectable.dart';

@lazySingleton
class BuildConfig {
  static const String kBaseUrl = 'https://app.missindependentme.com';
  static const bool kDefaultDarkMode = false;
  static const String kTermsOfConditions =
      'https://missindependentme.com/terms-andconditions';
  static const String kBrandingServiceUrl =
      'https://form.jotform.com/201312379386052';
}
