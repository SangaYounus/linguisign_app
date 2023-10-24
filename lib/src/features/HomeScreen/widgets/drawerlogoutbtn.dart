import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/AuthScreens/view/preloginScreen.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class DrawerLogOutBtn extends StatelessWidget {
  const DrawerLogOutBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            barrierDismissible: true,
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return LogoutDialogueBox(context);
            });
      },
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: 215.w,
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
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40)),
              gradient: LinearGradient(
                  colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Path 325.png',
                scale: 4,
              ),
              22.horizontalSpace,
              Text('Logout',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  LogoutDialogueBox(context) {
    return Dialog.fullscreen(
      backgroundColor: Colors.black.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 390.w,
              height: 199.h,
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
                    Text(
                      'Logout!',
                      style: GoogleFonts.roboto(
                          color: AppColors.TextColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    18.verticalSpace,
                    Text(
                      'Are you sure you want to logout?',
                      style: GoogleFonts.roboto(
                          color: AppColors.TextColor, fontSize: 16.sp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 25),
                            width: 145.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: -0.1,
                                    blurRadius: 13,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                border: Border.all(
                                    color: Color(0xffDEDEDE).withOpacity(0.5))),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.roboto(
                                    color: AppColors.FieldTxtlabelColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.sp),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PreLoginScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 145.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  AppColors.ButtonGr1,
                                  AppColors.ButtonGr2
                                ]),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.ButtonShadow2.withOpacity(
                                        0.6),
                                    spreadRadius: 15,
                                    blurRadius: 18,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                border: Border.all(
                                    color: AppColors.FieldTxtlabelColor
                                        .withOpacity(0.5))),
                            child: Center(
                              child: Text(
                                'Logout',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.sp),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
