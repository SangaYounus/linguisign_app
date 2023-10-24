import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/AboutApp.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/Terms&ConditionScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/privacypolicy.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                "Settings",
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
                      height: 57.h,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
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
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/Mask Group 16.png',
                          scale: 3.5,
                        ),
                        title: Text(
                          'Push Notifications',
                          style: GoogleFonts.roboto(color: AppColors.TextColor,),
                        ),
                        trailing: Switch(
                            inactiveThumbColor: Colors.white,
                            activeColor: Colors.green,
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            }),
                      ),
                    ),
                    CustomListTile(
                        img: 'assets/images/Mask Group 19.png',
                        txt: 'Terms & Conditions',
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsCondScreen()));
                        }),
                    CustomListTile(
                        img: 'assets/images/Mask Group 20.png',
                        txt: 'Privacy Policy',
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        }),
                    CustomListTile(
                        img: 'assets/images/Mask Group 20-1.png',
                        txt: 'About App',
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutApp()));
                        })
                  ])),
            ))));
  }

  CustomListTile({
    required final String img,
    required final String txt,
    required VoidCallback onpress,
  }) {
    return Container(
      width: 390.w,
      height: 57.h,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
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
      child: ListTile(
          onTap: onpress,
          leading: Image.asset(
            img,
            scale: 4,
          ),
          title: Text(
            txt,
            style: GoogleFonts.roboto(color: AppColors.TextColor),
          )),
    );
  }
}
