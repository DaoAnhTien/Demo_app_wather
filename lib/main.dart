import 'package:flutter/material.dart';

import 'di/injection.dart';
import 'modules/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
