import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/helpers/color.dart';

class SubsciptionRowHeaderContainer extends StatefulWidget {
  int selectedindex;
  SubsciptionRowHeaderContainer({
    Key? key,
    required this.selectedindex,
  }) : super(key: key);

  @override
  State<SubsciptionRowHeaderContainer> createState() =>
      _SubsciptionRowHeaderContainerState();
}

class _SubsciptionRowHeaderContainerState
    extends State<SubsciptionRowHeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      headerContainer(
        isSelected: widget.selectedindex == 0,
        txt: 'Weekly',
        onpress: () {
          setState(() {
            widget.selectedindex = 0; // Update the selected index
          });
        },
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            widget.selectedindex = 1; // Update the selected index
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          padding: EdgeInsets.only(right: 15),
          width: 100.w,
          height: 44.h,
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
                color: AppColors.FieldTxtlabelColor.withOpacity(0.3),
              ),
              color: widget.selectedindex == 1
                  ? AppColors.ButtonGr1
                  : Colors.white,
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'Quarterly',
                style: GoogleFonts.roboto(
                  color:
                      widget.selectedindex == 1 ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      headerContainer(
        isSelected: widget.selectedindex == 2,
        txt: 'Yearly',
        onpress: () {
          setState(() {
            widget.selectedindex = 2; // Update the selected index
          });
        },
      ),
    ]);
  }
}

// ignore: must_be_immutable
class headerContainer extends StatelessWidget {
  final String txt;
  final bool isSelected;

  VoidCallback onpress;
  headerContainer({
    Key? key,
    required this.txt,
    required this.isSelected,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.only(right: 20),
        width: 100.w,
        height: 44.h,
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
              color: AppColors.FieldTxtlabelColor.withOpacity(0.3),
            ),
            color: isSelected ? AppColors.ButtonGr1 : Colors.white,
            //
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            isSelected
                ? Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  )
                : SizedBox(),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                txt,
                style: GoogleFonts.roboto(
                    color: isSelected ? Colors.white : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
