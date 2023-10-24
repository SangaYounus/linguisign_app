import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/EditProfileScreen.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Mask Group 6.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(

            // bottomNavigationBar: BottomNavBar(),
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
                "My Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: SafeArea(
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                            Row(
                              children: [
                                Stack(alignment: Alignment.center, children: [
                                  Container(
                                    width: 320.w,
                                    height: 340.h,
                                    margin: EdgeInsets.only(
                                      top: 90,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.4),
                                          spreadRadius: -0.1,
                                          blurRadius: 13,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            EditProfileScreen()));
                                              },
                                              child: Image.asset(
                                                'assets/images/Group 12095.png',
                                                scale: 3.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        40.verticalSpace,
                                        Text(
                                          'Sara william',
                                          style: GoogleFonts.roboto(
                                              color: AppColors.TextColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 24.sp),
                                        ),
                                        15.verticalSpace,
                                        Information(
                                            txt1: "Age:", txt2: "22 years old"),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        Information(
                                            txt1: "Gender:", txt2: "Female"),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        Information(
                                            txt1: "Country:",
                                            txt2: "United State"),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        Information(
                                            txt1: "Language:",
                                            txt2: "English US"),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Email Address:',
                                              style: GoogleFonts.roboto(
                                                  color: AppColors.TextColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                              size: 15,
                                            ),
                                            5.horizontalSpace,
                                            Text(
                                              'sara.william@domain.com',
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff48576E)
                                                      .withOpacity(0.8),
                                                  fontSize: 13.sp),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Phone Number:',
                                              style: GoogleFonts.roboto(
                                                  color: AppColors.TextColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                              size: 15,
                                            ),
                                            5.horizontalSpace,
                                            Text(
                                              '+1 234 567890',
                                              style: GoogleFonts.roboto(
                                                  color: Color(0xff48576E)
                                                      .withOpacity(0.8),
                                                  fontSize: 13.sp),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Image.asset(
                                      'assets/images/Group 11988.png',
                                      scale: 3.5,
                                    ),
                                  ),
                                ]),
                              ],
                            )
                          ]),
                    )))));
  }

  Information({required String txt1, required String txt2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: GoogleFonts.roboto(
              color: AppColors.TextColor,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
        ),
        Text(
          txt2,
          style: GoogleFonts.roboto(
              color: Color(0xff48576E).withOpacity(0.8), fontSize: 14.sp),
        ),
      ],
    );
  }
}
