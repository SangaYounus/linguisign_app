import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/helpers/color.dart';

// ignore: must_be_immutable
class Pre_LoginButton extends StatelessWidget {
  final String Txt;
  VoidCallback onpress;

  final String img;

  Pre_LoginButton({
    Key? key,
    required this.Txt,
    required this.onpress,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: 382.w,
        height: 50.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.ButtonShadow1.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
            ),
            Container(
                child: Image.asset(
              img,
              color: AppColors.ButtonIconColor,
              scale: 3.5,
            )),
            SizedBox(
              width: 20.sp,
            ),
            Center(
              child: Text(Txt,
                  style:
                      GoogleFonts.roboto(fontSize: 15.sp, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
