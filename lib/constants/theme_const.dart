
import 'package:bizcard_app/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConst {

  ThemeConst._();

  static getApplicationTheme(){

    Color white = ColorsConst.white;
    Color text = ColorsConst.text;
    Color grey = ColorsConst.greyText;
    Color primary = ColorsConst.primary;

    final defaultBorder =  OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFFE6E6E6)
      ),
      borderRadius: BorderRadius.circular(4)
    );

    final errorBorder =  OutlineInputBorder(
      borderSide: const BorderSide(
        color: ColorsConst.primary
      ),
      borderRadius: BorderRadius.circular(4)
    );

    final inputStyle =  GoogleFonts.roboto(
        fontSize: 16,
        color: grey,
        fontWeight: FontWeight.w400,
      );

    return ThemeData(

      primaryColor: primary,

      scaffoldBackgroundColor: white,

      appBarTheme: AppBarTheme(
        backgroundColor: white,
        elevation: 0,
        surfaceTintColor: text,
        foregroundColor: text,
        actionsIconTheme: IconThemeData(
          color: text
        ),
        titleTextStyle: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
        titleSpacing: 16
      ),

      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: const Color(0xFF2550E7),
          borderRadius: BorderRadius.circular(8)
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.white,
        labelPadding: EdgeInsets.zero,
        unselectedLabelColor: const Color(0xFFB0B0B0),
        labelStyle: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400
        ),
        unselectedLabelStyle: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400
        )
      ),

      colorScheme: const ColorScheme.light(
        primary: ColorsConst.primary,
        secondary: ColorsConst.primary,
        error: ColorsConst.red,
      ),

      textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: ColorsConst.green
        )
      ),

      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: 12),
        labelStyle: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500
        )
      ),

      dividerColor: ColorsConst.border,

      fontFamily: GoogleFonts.roboto().fontFamily,

      textButtonTheme: TextButtonThemeData(
        
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Color(0xFF2550E7)),
          textStyle: MaterialStatePropertyAll(
            GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w600
            )
          )
        )
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(8),
          side: const MaterialStatePropertyAll(BorderSide(
            color: ColorsConst.primary,
          )),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
          )),
          minimumSize: const MaterialStatePropertyAll(
            Size(double.infinity, 50)
          ),
          textStyle: MaterialStatePropertyAll(
            GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          )
        )
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(8),
          side: const MaterialStatePropertyAll(BorderSide(
            color: ColorsConst.primary,
          )),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
          )),
          backgroundColor: const MaterialStatePropertyAll(ColorsConst.primary),
          minimumSize: const MaterialStatePropertyAll(
            Size(double.infinity, 50)
          ),
          foregroundColor: const MaterialStatePropertyAll(Colors.white),
          textStyle: MaterialStatePropertyAll(
            GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          )
        )
      ),
      
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: defaultBorder,
        focusedBorder: defaultBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        prefixIconColor: const Color(0xFF0077B5),
        suffixIconColor: const Color(0xFFB0B0B0),
        labelStyle: inputStyle,
        hintStyle: inputStyle
      ),
    );
  }
}