import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/features/HomeScreen/view/homeScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/BottomnavBar.dart';

import 'package:linguasign_app/src/features/HomeScreen/widgets/CongratsDialogScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/widgets/GlobalButton.dart';
import 'package:provider/provider.dart';

class HelpAndFeedBackScreen extends StatefulWidget {
  const HelpAndFeedBackScreen({super.key});

  @override
  State<HelpAndFeedBackScreen> createState() => _HelpAndFeedBackScreenState();
}

class _HelpAndFeedBackScreenState extends State<HelpAndFeedBackScreen> {
  bool isSwitched = false;
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
                "Help & Feedback",
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
                    20.verticalSpace,
                    Container(
                        width: 390.w,
                        height: 45.h,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border: Border.all(
                              color: AppColors.FieldTxtlabelColor.withOpacity(
                                  0.6)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: -0.1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.roboto(
                                  color:
                                      AppColors.FieldTxtlabelColor.withOpacity(
                                          0.6)),
                              hintText: 'Subject',
                              contentPadding:
                                  EdgeInsets.only(bottom: 10, left: 10)),
                        )),
                    Container(
                        width: 390.w,
                        height: 250.h,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(
                              color: AppColors.FieldTxtlabelColor.withOpacity(
                                  0.6)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: -0.1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type your message here...',
                              hintStyle: GoogleFonts.roboto(
                                  color:
                                      AppColors.FieldTxtlabelColor.withOpacity(
                                          0.6)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10)),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 2; i < 4; i++)
                          Stack(alignment: Alignment.center, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.elliptical(25, 20)),
                              child: Image.asset(
                                'assets/images/Group 12179.png',
                                scale: 16,
                              ),
                            ),
                            Positioned(
                                top: 1,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/Group 11199.png',
                                  scale: 4.5,
                                ))
                          ]),
                        Container(
                          width: 90.w,
                          height: 70.h,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: -0.1,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: AppColors.FieldTxtlabelColor,
                              ),
                              5.verticalSpace,
                              Text(
                                textAlign: TextAlign.center,
                                "Add More",
                                style: GoogleFonts.roboto(
                                    color: AppColors.FieldTxtlabelColor,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    40.verticalSpace,
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              barrierDismissible: true,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return CongratsDialogScreen(
                                  img: 'assets/images/Group 651.png',
                                  txt1: 'Thank You!',
                                  txt2: 'Your Feedback has been submitted',
                                  onpress: () {
                                    final bottomProvider =
                                        Provider.of<BottomProviderController>(
                                            context,
                                            listen: false);
                                    bottomProvider.navBarChange(0);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BottomNavBar()));
                                  },
                                );
                              });
                        },
                        child: GlobalButton(title: "Submit")),
                    40.verticalSpace,
                  ])),
            ))));
  }
}
