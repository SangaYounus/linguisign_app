import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class ProfileText_Field extends StatelessWidget {
  final String prefixpath;
  final String hint;
  ProfileText_Field({
    Key? key,
    required this.hint,
    required this.prefixpath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hint,
        prefixIcon: Image.asset(
          prefixpath,
          scale: 4,
        ),
        hintStyle: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 0,
          color: AppColors.hintColor.withOpacity(0.8),
        ),
      ),
    );
  }
}
