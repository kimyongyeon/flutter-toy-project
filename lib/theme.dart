import 'package:flutter/material.dart';
import 'package:toy_project/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white)
    )
  );
}

ThemeData buttonTheme() {
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        minimumSize: Size(400, 60)
      )
    )
  );
}

ThemeData shoppingCartTheme() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
  );
}
