import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  // Color Styles//

  static const Color primaryColor = Color(0xFF2A3748);
  static const Color secondaryColor = Color(0xFF344559);
  static const Color tertiaryColor = Color(0xFF202C3A);

  // Text Styles //
  static const String fontAmiri = 'Amiri';
  static const String fontAlmarai = 'Almarai';
  static const String fontReemKufi = 'ReemKufi';

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontFamily: fontAmiri,
    fontWeight: FontWeight.bold,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
  );
}
