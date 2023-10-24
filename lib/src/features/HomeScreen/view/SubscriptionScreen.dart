import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/SubscriptionpkgScreen.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/widgets/GlobalButton.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

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
                "Subscription",
                style: GoogleFonts.roboto(color: Colors.white),
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
                    Container(
                        width: 390.w,
                        height: 331.h,
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                            20.verticalSpace,
                            Information(
                                txt1: "Subscription Plan:", txt2: "Silver"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(
                                txt1: "Availability:", txt2: "06 Months"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(
                                txt1: "Subscribe Date:",
                                txt2: "August 01, 2023"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(
                                txt1: "Expire Date:", txt2: "January 31, 2024"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(txt1: "Amount:", txt2: "USD \$30.00"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(
                                txt1: "Payment Method:", txt2: "Apply Pay"),
                            Divider(
                              height: 25,
                              color: Colors.grey,
                            ),
                            Information(txt1: "Status:", txt2: "Active"),
                          ],
                        )),
                    120.verticalSpace,
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubscriptionPkgScreen(
                                        
                                      )));
                        },
                        child: GlobalButton(title: 'Update Package'))
                  ])),
            ))));
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
