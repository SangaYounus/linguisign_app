import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/notificationsScreen.dart';

import 'package:linguasign_app/src/features/HomeScreen/widgets/HomeContainer.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/drawer.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class VoiceScreen2 extends StatefulWidget {
  const VoiceScreen2({super.key});

  @override
  State<VoiceScreen2> createState() => _VoiceScreen2State();
}

class _VoiceScreen2State extends State<VoiceScreen2> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
            key: _key,
            drawer: DrawerScreen(),
            // bottomNavigationBar: BottomNavBar(),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notificationScreen()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: badges.Badge(
                      badgeContent: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      child: Icon(
                        Icons.notifications,
                      ),
                    ),
                  ),
                )
              ],
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
                            30.verticalSpace,
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  headerContainer("Spanish"),
                                  
                                  Container(
                                    padding: EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                        color: Color(0xff2196F3),
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      'assets/images/Group 12033.png',
                                      scale: 4,
                                    ),
                                  ),
                                  headerContainer("English")
                                ]),
                            20.verticalSpace,
                            Home_Container(
                              txt1: "Ciao, come stai?",
                              txt2: "Clear",
                              clr: Color(
                                0xffD10000,
                              ),
                            ),
                            20.verticalSpace,
                            Home_Container(
                              txt1: "Hello, How are you?",
                              txt2: "Translation",
                              clr: Color(
                                0xff808285,
                              ),
                            ),
                            Image.asset(
                              'assets/images/Group 11981.png',
                              scale: 5,
                            )
                            
                          ]),
                    )))));
  }

  headerContainer(String txt) {
    return Container(
        width: 130.w,
        height: 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                txt,
                style: GoogleFonts.roboto(
                    color: AppColors.FieldTxtlabelColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Color(0xff5E5E5E),
            )
          ],
        ));
  }
}
