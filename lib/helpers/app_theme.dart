import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      )
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold
      ),
      headline5: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold
      ),
      caption: const TextStyle(
        color: Colors.black,
      ),
      bodyText2: const TextStyle(
        fontSize: 10.0,
        color: Colors.black,
      )
    )

  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      )
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      headline6: const TextStyle(
        fontSize: 12.0,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      headline5: const TextStyle(
        fontSize: 14.0,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      caption: const TextStyle(
        color: Colors.white,
      ),
      bodyText2: const TextStyle(
        fontSize: 10.0,
        color: Colors.white,
      )
    )
  );
}