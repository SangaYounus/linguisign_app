import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/helpers/color.dart';

// ignore: must_be_immutable
class CongratsDialogScreen extends StatelessWidget {
  final String img;
  final String txt1;
  final String txt2;
  VoidCallback onpress;
   CongratsDialogScreen({
    Key? key,
    required this.img,
    required this.txt1,
    required this.txt2,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: Colors.black.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 390.w,
              height: 320.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: -0.1,
                      blurRadius: 13,
                      offset: Offset(0, 3),
                    )
                  ],
                  border: Border.all(
                    color: AppColors.FieldTxtlabelColor,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Image.asset(
                      img,
                      scale: 4,
                    ),
                    23.verticalSpace,
                    Text(
                      txt1,
                      style: GoogleFonts.roboto(
                          color: AppColors.TextColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    12.verticalSpace,
                    Text(
                      txt2,
                      style: GoogleFonts.roboto(
                          color: AppColors.TextColor, fontSize: 15.sp),
                    ),
                    15.verticalSpace,
                    GestureDetector(
                      onTap: onpress,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 200.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.ButtonGr1,
                              AppColors.ButtonGr2
                            ]),
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.ButtonShadow2.withOpacity(0.6),
                                spreadRadius: 15,
                                blurRadius: 18,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                                color: AppColors.FieldTxtlabelColor.withOpacity(
                                    0.5))),
                        child: Center(
                          child: Text(
                            'Back to Home',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
