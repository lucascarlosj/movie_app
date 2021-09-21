import 'package:flutter/material.dart';

class MovieAppUiConfig {
// Contrutor privado para nao ser instanciado
  MovieAppUiConfig._();

  //Metodo get
  static String get title => 'Movie App';

  static ThemeData get theme => ThemeData(
        fontFamily: 'Metropolis',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          //backwardsCompatibility: false,
          titleTextStyle: TextStyle(
              color: Color(0xff222222),
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      );
}
