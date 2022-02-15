import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      //UN catch si es que la ruta no existe
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
