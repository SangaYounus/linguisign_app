import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/helpers/color.dart';

class Home_Container extends StatelessWidget {
  final String txt1;
  final String txt2;
  final Color clr;
  const Home_Container({
    Key? key,
    required this.txt1,
    required this.txt2,
    required this.clr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 155.h,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt1,
            textAlign: TextAlign.left,
            style:
                GoogleFonts.roboto(color: AppColors.TextColor, fontSize: 20.sp),
          ),
          SizedBox(
            height: 55.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                txt2,
                style: TextStyle(
                    color:clr,
                    ),
              ),
              Image.asset(
                'assets/images/Icon metro-volume-high.png',
                scale: 1.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
