import 'package:app_flutter/constants/mode.dart';
import 'package:app_flutter/theme/color_scheme.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData settingsTheme(Mode themeMode) {
    return (ThemeData(
      brightness: themeMode == Mode.lightMode? Brightness.light: Brightness.dark,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: themeMode == Mode.lightMode? colorScheme.lightBackground:colorScheme.darkBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.primary,
              foregroundColor: Colors.white,
              iconColor: Colors.white
              )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: colorScheme.primary,
              iconColor: colorScheme.primary,
              side: BorderSide(color: colorScheme.primary))),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: themeMode == Mode.lightMode? colorScheme.lightBackground:colorScheme.darkBackground,
          prefixIconColor: colorScheme.primary,
          suffixIconColor: colorScheme.primary,
          labelStyle: TextStyle(color:colorScheme.primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorScheme.primary),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorScheme.primary),
              borderRadius: BorderRadius.circular(8)),
          hintStyle: TextStyle(color: Colors.grey),
          ),
          textSelectionTheme: TextSelectionThemeData(
        cursorColor: themeMode == Mode.lightMode? colorScheme.textLight: colorScheme.textDark, // Color del cursor
        // ignore: deprecated_member_use
        selectionColor:themeMode == Mode.lightMode? colorScheme.textLight.withOpacity(0.5):colorScheme.textDark.withOpacity(0.5), // Color de selección
        selectionHandleColor:themeMode == Mode.lightMode? colorScheme.textLight: colorScheme.textDark, // Color del manejador de selección
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.primary
      ),
    )
    );
  }
}
