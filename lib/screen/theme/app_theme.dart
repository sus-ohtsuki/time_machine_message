import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(context),
    );
  }

  // TODO(me): 調整する
  static TextTheme textTheme() {
    return TextTheme(
      displayLarge: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 96,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 60,
        fontWeight: FontWeight.w300,
      ),
      displaySmall: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: GoogleFonts.mPlus1p(
        color: AppColor.primary,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme(BuildContext context) {
    return InputDecorationTheme(
      isDense: true,
      fillColor: AppColor.backgroundColor,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      errorStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.red,
          ),
      hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: AppColor.primary.withOpacity(0.7),
          ),
    );
  }
}
