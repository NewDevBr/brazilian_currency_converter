import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:currency_converter/screens/splash.dart';
import 'package:currency_converter/screens/paginator.dart';

void main() {
  runApp(CurrentConverter());
}

class CurrentConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('pt', 'BR')],
      initialRoute: '/splash',
      routes: {
        '/splash': (BuildContext context) => Splash(),
        '/paginator': (BuildContext context) => Paginator(),
      },
    );
  }
}
