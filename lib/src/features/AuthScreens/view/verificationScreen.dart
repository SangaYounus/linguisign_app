import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/features/AuthScreens/view/createProfileScreen.dart';

import 'package:linguasign_app/src/helpers/color.dart';

import 'package:linguasign_app/src/widgets/GlobalButton.dart';
import 'package:linguasign_app/src/widgets/richtext.dart';

import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                "Verification",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: SafeArea(
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
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
                                50.verticalSpace,
                                Text(
                                  textAlign: TextAlign.center,
                                  "We have sent you an email containing 6 digits \n verification code. Please enter the code to\n   verify your identity",
                                  style: GoogleFonts.roboto(
                                      color: Color(0xff353535),
                                      fontWeight: FontWeight.bold),
                                ),
                                50.verticalSpace,
                                Container(
                                  width: 389,
                                  height: 50.h,
                                  decoration: BoxDecoration(),
                                  child: OTPTextField(
                                    outlineBorderRadius: 50,
                                    contentPadding:
                                        EdgeInsets.only(top: 40, bottom: 50),
                                    onChanged: (value) {
                                      setState(() {});
                                    },

                                    otpFieldStyle: OtpFieldStyle(
                                        backgroundColor: Colors.transparent,
                                        disabledBorderColor:
                                            AppColors.otpBorderColor,
                                        focusBorderColor:
                                            AppColors.otpBorderColor,
                                        borderColor: AppColors.otpBorderColor,
                                        enabledBorderColor:
                                            AppColors.otpBorderColor,
                                        errorBorderColor: AppColors.alertColor),

                                    length: 6,

                                    fieldWidth: 45.w,

                                    style: GoogleFonts.roboto(
                                      fontSize: 20.sp,
                                    ),

                                    textFieldAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    fieldStyle: FieldStyle.box,
                                    // onCompleted: (pin) {
                                    //   Get.toNamed("/OtpForgotPasswordScreen");
                                    //   print("Completed: " + pin);
                                    // },
                                  ),
                                ),
                                40.verticalSpace,
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateProfileScreen()));
                                  },
                                  child: GlobalButton(
                                    title: "Continue",
                                  ),
                                ),
                                50.verticalSpace,
                                richText(
                                  text1: "Don't received code? ",
                                  text2: "Resend",
                                ),
                              ]),
                        ))))));
  }
}
