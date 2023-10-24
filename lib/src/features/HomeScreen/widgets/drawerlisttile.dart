import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linguasign_app/src/helpers/color.dart';


// ignore: must_be_immutable
class DrawerListtile extends StatelessWidget {
  final String img;
  final String txt;

  VoidCallback onpress;
  DrawerListtile({
    Key? key,
    required this.img,
    required this.onpress,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
          onTap: onpress,
          leading: Image.asset(
            img,
            scale: 4,
          ),
          title: Text(
            txt,
            style: TextStyle(
                color: AppColors.headingTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
          )),
    );
  }
}
