import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linguasign_app/src/features/AuthScreens/view/createProfileScreen.dart';

import 'package:linguasign_app/src/features/AuthScreens/viewmodel/AuthView.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/MyProfileScreen.dart';
import 'package:linguasign_app/src/features/HomeScreen/view/SubscriptionpkgScreen.dart';

import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'package:linguasign_app/src/features/SplashScreen/view/SplashScreen.dart';

import 'package:provider/provider.dart';

import 'package:provider/single_child_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
              providers: appProviders,
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'First Method',

                  // You can use the library anywhere in the app even in theme
                  theme: ThemeData(
                      appBarTheme: AppBarTheme(
                          toolbarTextStyle: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      primarySwatch: Colors.blue,
                      textTheme: GoogleFonts.poppinsTextTheme()),
                  home: SplashScreen()));
        });
  }
}

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider<AuthViewModel>(create: (context) => AuthViewModel()),
  ChangeNotifierProvider<BottomProviderController>(
      create: (context) => BottomProviderController())
];
