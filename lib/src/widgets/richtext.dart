import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/helpers/color.dart';


class richText extends StatelessWidget {
  final String text1;
  final String text2;
  const richText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: GoogleFonts.poppins(
              color: AppColors.TextColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400),
        ),
        Text(
          text2,
          style: GoogleFonts.poppins(
              color: AppColors.TextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
