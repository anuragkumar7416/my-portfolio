import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


extension TypographyUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => GoogleFonts.poppinsTextTheme(theme.textTheme); // Modify this line
  TextTheme get secondaryTextTheme => GoogleFonts.montserratTextTheme(theme.textTheme); // Modify this line
  ColorScheme get colors => theme.colorScheme;
  TextStyle? get displayLarge => textTheme.displayLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get displayMedium => textTheme.displayMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get displaySmall => textTheme.displaySmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get headlineLarge => textTheme.headlineLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get headlineMedium => textTheme.headlineMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get headlineSmall => textTheme.headlineSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get titleLarge => textTheme.titleLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get titleMedium => textTheme.titleMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get titleSmall => textTheme.titleSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get labelLarge => textTheme.labelLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get labelMedium => textTheme.labelMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get labelSmall => textTheme.labelSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get bodyLarge => textTheme.bodyLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get bodyMedium => textTheme.bodyMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get bodySmall => textTheme.bodySmall?.copyWith(
    color: colors.onSurface,
  );







  TextStyle? get secondaryDisplayLarge => secondaryTextTheme.displayLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryDisplayMedium =>secondaryTextTheme.displayMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryDisplaySmall => secondaryTextTheme.displaySmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryHeadlineLarge => secondaryTextTheme.headlineLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryHeadlineMedium => secondaryTextTheme.headlineMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryHeadlineSmall => secondaryTextTheme.headlineSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryTitleLarge => secondaryTextTheme.titleLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryTitleMedium => secondaryTextTheme.titleMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryTitleSmall => secondaryTextTheme.titleSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryLabelLarge => secondaryTextTheme.labelLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryLabelMedium => secondaryTextTheme.labelMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryLabelSmall => secondaryTextTheme.labelSmall?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryBodyLarge => secondaryTextTheme.bodyLarge?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryBodyMedium => secondaryTextTheme.bodyMedium?.copyWith(
    color: colors.onSurface,
  );
  TextStyle? get secondaryBodySmall => secondaryTextTheme.bodySmall?.copyWith(
    color: colors.onSurface,
  );
}