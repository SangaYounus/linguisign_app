import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:linguasign_app/src/features/HomeScreen/view/homeScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/videoScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/voiceScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/drawer.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final pages = [
    HomeScreen(),
    VoiceScreen(),
    VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final bottomProvider = Provider.of<BottomProviderController>(context);

    return Consumer<BottomProviderController>(
        builder: (context, bottomProvider, child) {
      return Container(
          color: Colors.transparent,
          // decoration:
          //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
          width: double.infinity,
          child: Scaffold(
            drawer: DrawerScreen(),
            resizeToAvoidBottomInset: false,
            extendBody: true,
            // backgroundColor: Colors.transparent,
            backgroundColor: Colors.white,
            // body: GetBuilder<BottomController>(
            //   builder: (_) => pages[bottomcontroller.navigationBarIndexValue],
            body: pages[bottomProvider.navigationBarIndexValue],
            bottomNavigationBar: buildMyNavBar(context, bottomProvider),

            // bottomNavigationBar: GetBuilder<BottomController>(
            //   builder: (_) => buildMyNavBar(context),
            // ),
          ));
    });
  }

  buildMyNavBar(BuildContext context, BottomProviderController bottomProvider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80.h,
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white24),
          borderRadius: BorderRadius.circular(45),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.ButtonGr2,
              AppColors.ButtonGr1,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () {
                // Get.to(() => MainScreen());
              },
              child: navBarIconWithTitle(
                  index: 0,
                  onpress: () {
                    setState(() {
                      bottomProvider.navBarChange(0);
                    });
                  },
                  txt: 'Write',
                  img: "assets/images/Icon material-edit.png",
                  bottomcontroller: bottomProvider),
            ),
            navBarIconWithTitle(
                index: 1,
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(1);
                  });
                },
                txt: 'Voice',
                img: "assets/images/Icon awesome-microphone-alt.png",
                bottomcontroller: bottomProvider),
            navBarIconWithTitle(
                index: 2,
                onpress: () {
                  setState(() {
                    bottomProvider.navBarChange(2);
                  });
                },
                img: "assets/images/Icon awesome-video.png",
                txt: 'Video',
                bottomcontroller: bottomProvider),
          ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class navBarIconWithTitle extends StatelessWidget {
  final String img;
  final String txt;
  final int index; // New index property to specify the associated index

  VoidCallback onpress;
  final BottomProviderController bottomcontroller;

  navBarIconWithTitle(
      {super.key,
      required this.onpress,
      required this.txt,
      required this.img,
      required this.index,
      required this.bottomcontroller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          bottomcontroller.navBarChange(index);
          onpress();
        },
        child: Container(
            width: 70.w,
            height: 55.h,
            decoration: BoxDecoration(
                color: bottomcontroller.navigationBarIndexValue == index
                    ? Color(0xff2196F3)
                    : Colors.white,
                shape: BoxShape.circle),
            child: Column(children: [
              10.verticalSpace,
              Image.asset(
                img,
                scale: 1.2,
                color: bottomcontroller.navigationBarIndexValue == index
                    ? Colors.white
                    : Color(0xff2196F3),
              ),
              5.verticalSpace,
              Text(txt,
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: bottomcontroller.navigationBarIndexValue == index
                        ? Colors.white
                        : Color(0xff353535),
                  )),
            ])));
  }
}
