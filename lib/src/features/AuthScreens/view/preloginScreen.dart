import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/AuthScreens/view/LoginEmailScreen.dart';
import 'package:linguasign_app/src/features/AuthScreens/view/LoginPhoneScreen.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/widgets/preloginButton.dart';

class PreLoginScreen extends StatelessWidget {
  PreLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/Mask Group 6.png',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              "Pre Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      40.verticalSpace,
                      Center(
                        child: Image.asset(
                          'assets/images/Group 12030.png',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Pre_LoginButton(
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginEmailScreen()));
                        },
                        Txt: 'Sign-In with Email Address',
                        img: "assets/images/Icon material-email.png",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Pre_LoginButton(
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPhoneScreen()));
                        },
                        Txt: 'Sign-In with Phone Number',
                        img: "assets/images/Mask Group 2.png",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Pre_LoginButton(
                        onpress: () {
                          // Get.toNamed('/HomeScreen');
                        },
                        Txt: '  Login with Facebook ',
                        img: "assets/images/Icon ionic-logo-facebook.png",
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Container(
                        width: 382.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffFC5656).withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              Color(0xffFC5656),
                              Color(0xffD10000),
                            ])),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                child: Image.asset(
                              "assets/images/Icon ionic-logo-google.png",
                              color: AppColors.ButtonIconColor,
                              scale: 3.5,
                            )),
                            SizedBox(
                              width: 20.sp,
                            ),
                            Center(
                              child: Text("  Login with Google",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15.sp, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Container(
                        width: 382.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff464646).withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              Color(0xff464646),
                              Color(0xff000000),
                            ])),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                child: Image.asset(
                              "assets/images/Icon metro-apple.png",
                              color: AppColors.ButtonIconColor,
                              scale: 3.5,
                            )),
                            SizedBox(
                              width: 24.sp,
                            ),
                            Center(
                              child: Text(" Login with Apple ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15.sp, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            "By sign-in, you agree to our",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.TextColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Terms & Conditions | Privacy Policy",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.TextColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
