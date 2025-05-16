import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // Farsi
      ],
      theme: ThemeData(
        fontFamily: 'dana',
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'dana',
            fontSize: 16,
            color: Color.fromARGB(255, 70, 70, 70),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: Scaffold(body: Center(child: Image(image: Assets.images.logo.provider()))),
    );
  }
}
