import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/helpers/color.dart';

class SubscriptionContainer extends StatelessWidget {
  
  const SubscriptionContainer({
    Key? key,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            height: 350.h,
            clipBehavior: Clip.none,
            autoPlay: false,
            enableInfiniteScroll: false, // Set to true for infinite looping
            // initialPage: 1, // Set to the initial page you want
            scrollDirection: Axis.horizontal),
        items: [
          SlidingContainer(
            onpress: () {},
          ),
          SlidingContainer(
            onpress: () {},
          ),
          SlidingContainer(
            onpress: () {},
          ),
        ]);
  }
}

class SlidingContainer extends StatelessWidget {
  VoidCallback onpress;
  SlidingContainer({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress();
      },
      child: Container(
        height: 380.h,
        width: 350.w,
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(color: Colors.white, width: 0.5.w),
            borderRadius: BorderRadius.circular(20.r),
            color: Color(0xffFFFFFF)),
        child: Column(children: [
          Stack(children: [
            Container(
              width: 286.5.w,
              height: 100.h,
              padding: EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                    AppColors.ButtonGr2,
                    AppColors.ButtonGr1,
                  ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Text(
                textAlign: TextAlign.center,
                'Gold Package',
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130.w,
                  height: 80.h,
                  margin: EdgeInsets.only(
                    top: 60,
                  ),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.ButtonGr1, width: 3),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.7))),
                    child: Center(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$",
                            style: GoogleFonts.roboto(
                                fontSize: 28.sp,
                                color: AppColors.ButtonGr1,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "50.",
                            style: GoogleFonts.roboto(
                                fontSize: 28.sp,
                                color: AppColors.ButtonGr1,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: "00",
                            style: GoogleFonts.roboto(
                                fontSize: 15.sp,
                                color: AppColors.ButtonGr1,
                                fontWeight: FontWeight.w400)),
                      ])),
                    ),
                  ),
                ),
              ],
            ),
          ]),
          30.verticalSpace,
          Column(children: [
            SubscriptionListTILE(
              txt: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.',
            ),
            Divider(
              color: AppColors.DividerColor,
            ),
            SubscriptionListTILE(
              txt: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.',
            ),
            Divider(
              color: AppColors.DividerColor,
            ),
            SubscriptionListTILE(
              txt: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.',
            ),
            Divider(
              color: AppColors.DividerColor,
            ),
            SubscriptionListTILE(
              txt: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.',
            ),
            Divider(
              color: AppColors.DividerColor,
            ),
            SubscriptionListTILE(
              txt: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.',
            ),
          ])
        ]),
      ),
    );
  }
}

class SubscriptionListTILE extends StatelessWidget {
  final String txt;
  const SubscriptionListTILE({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.check_circle,
          color: AppColors.ButtonGr1,
          size: 15.sp,
        ),
        Column(
          children: [
            Text(
              txt,
              style: GoogleFonts.roboto(
                  color: AppColors.FieldTxtlabelColor, fontSize: 9.sp),
            ),
          ],
        ),
      ],
    );
  }
}
