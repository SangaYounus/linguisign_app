import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class GlobalButton extends StatelessWidget {
  final String title;

  // final VoidCallback onpress;

  GlobalButton({
    Key? key,
    required this.title,
    // required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 50.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.ButtonShadow2.withOpacity(0.6),
              spreadRadius: 15,
              blurRadius: 18,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
      child: Center(
        child: Text(title,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
