import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static const Color primaryOrange = Color(0xffFFA500);
  static const Color primaryGreen = Color(0xff9ACD32);
  static const Color secondBlue = Color(0xff87CEEB);
  static const Color secondPink = Color(0xffFFC0CB);
  static const Color titleButtonRed = Color(0xffFF0000);
  static const Color titleButtonPurple = Color(0xff800080);
  static const Color backGroundGrey = Color(0xffD3D3D3);
  static const Color backGroundBeige = Color(0xffF5F5DC);
  static const Color importantYellow = Color(0xffFFFF00);
  static const Color importantOrange = Color(0xffFF6347);
  static const Color textColor = Color.fromARGB(255, 40, 40, 40);

  ThemeData theme = ThemeData(
    primaryColor: primaryOrange,
    primaryColorLight: primaryOrange,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: secondBlue,
      onPrimary: primaryOrange,
      secondary: secondBlue,
      onSecondary: secondBlue,
      error: Colors.red,
      onError: Colors.red,
      background: Color(0xffFFFFFF),
      onBackground: Color(0xffFFFFFF),
      surface: Color(0xffFFFFFF),
      onSurface: Color(0xffFFFFFF),
      tertiary: importantYellow,
    ),
    scaffoldBackgroundColor: backGroundGrey,
    splashColor: secondBlue,

/*     primaryColorDark: black,
    primaryColorLight: secondary,
    fontFamily: fontPoppins,
    scaffoldBackgroundColor: Colors.white,
    indicatorColor: white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    canvasColor: Colors.white,
    disabledColor: muted,
    dividerColor: gray, */
    /*  pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ), */
    /* elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
          ),
        ),
      ),
    ), */
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      actionsIconTheme: const IconThemeData(
        color: Color(
          0xff232429,
        ),
      ),
    ),
    textTheme: TextTheme(
      //Headline1 yerine kullanılıyor.
      displayLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 36,
        ),
      ),
      //Headline2 yerine kullanılıyor.
      displayMedium: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 26,
        ),
      ),
      //Headline3 yerine kullanılıyor.
      displaySmall: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      //Headline4 yerine kullanılıyor.
      headlineMedium: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      bodyMedium: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      bodySmall: GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
  );
}
