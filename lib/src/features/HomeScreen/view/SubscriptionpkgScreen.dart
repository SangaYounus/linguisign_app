import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/features/HomeScreen/view/homeScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/BottomnavBar.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/CongratsDialogScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/SubsciptionContainer.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/SubscriptionRowHeaderContainer.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/widgets/GlobalButton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class SubscriptionPkgScreen extends StatelessWidget {
  const SubscriptionPkgScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PageController _pageController = PageController(initialPage: 1);
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
                    SubsciptionRowHeaderContainer(
                      selectedindex: 1,
                      // pageController: _pageController,
                    ),
                    20.verticalSpace,
                    SubscriptionContainer(),
                    120.verticalSpace,
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              barrierDismissible: true,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return CongratsDialogScreen(
                                  img: 'assets/images/Group 650.png',
                                  txt1: 'Congratulation!',
                                  txt2: 'You have subscribed successfully',
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
                        child: GlobalButton(title: 'Subscribe'))
                  ])),
            ))));
  }
}
