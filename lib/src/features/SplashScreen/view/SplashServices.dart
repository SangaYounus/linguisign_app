import 'dart:async';

import 'package:flutter/material.dart';

import 'package:linguasign_app/src/features/AuthScreens/view/preloginScreen.dart';

class SplashServices {
  void Splash(BuildContext, context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => PreLoginScreen())));
  }
}
