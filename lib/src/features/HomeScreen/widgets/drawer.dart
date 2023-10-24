import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/Help&Feedback.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/MyProfileScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/SettingScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/SubscriptionScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/homeScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/notificationsScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/BottomnavBar.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/drawerlisttile.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/drawerlogoutbtn.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: 320.w,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(
            children: [
              40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 70.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
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
                      child: Image.asset(
                        'assets/images/Icon ionic-ios-close.png',
                        scale: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Group 11988.png',
                      scale: 4,
                    ),
                    Text(
                      "Sara william",
                      style: GoogleFonts.roboto(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.TextColor,
                      ),
                    ),
                    Text(
                      "john.smith@domain.com",
                      style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: AppColors.subtitleTextColor,
                      ),
                    ),
                    10.verticalSpace,
                    DrawerListtile(
                      onpress: () {
                        final bottomProvider =
                            Provider.of<BottomProviderController>(context,
                                listen: false);
                        bottomProvider.navBarChange(0);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar()));
                      },
                      img: 'assets/images/Mask Group 14.png',
                      txt: 'Home',
                    ),
                    DrawerListtile(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfileScreen()));
                      },
                      img: 'assets/images/Mask Group 13.png',
                      txt: 'My Profile',
                    ),
                    DrawerListtile(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubscriptionScreen()));
                      },
                      img: 'assets/images/Mask Group 15.png',
                      txt: 'My Subscription',
                    ),
                    DrawerListtile(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notificationScreen()));
                      },
                      img: 'assets/images/Mask Group 16.png',
                      txt: 'Notifications',
                    ),
                    DrawerListtile(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingScreen()));
                      },
                      img: 'assets/images/Mask Group 17.png',
                      txt: 'Settings',
                    ),
                    DrawerListtile(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelpAndFeedBackScreen()));
                      },
                      img: 'assets/images/Mask Group 18.png',
                      txt: 'Help & Feedback',
                    ),
                    15.verticalSpace,
                    DrawerLogOutBtn(),
                    15.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
