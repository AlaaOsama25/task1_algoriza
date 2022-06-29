import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'onboarding/onboarding_screens.dart';

void main() {
  runApp(const MyApp());
}
//779AB6

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale("en"),
        ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      title: 'Flutter Demo',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //primarySwatch: Color(0xff779AB6),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0.0
        )
      ),
      home:  OnboardingScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}


