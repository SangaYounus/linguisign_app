import 'package:flutter/material.dart';

import 'package:linguasign_app/src/features/AuthScreens/view/verificationScreen.dart';
import 'package:linguasign_app/src/helpers/toast.dart';

class AuthViewModel extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  loginemail(BuildContext context) {
    final emailname = emailController.text;
    // final password = passwordController.text;

    if (emailname == 'admin@gmail.com') {
      showtoast('Login Successfully');
        Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));

      // Get.toNamed('/Home');
    } else {
      showtoast("Enter Valid Email Address");
    }
  }

  loginPhone(BuildContext context) {
    final phonename = phoneController.text;
    // final password = passwordController.text;

    if (phonename == '123') {
      showtoast('Login Successfully');
         Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
      // Get.toNamed('/Home');
    } else {
      showtoast("Enter Valid Phone Number");
    }
  }

  clearall() {
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
    fullnameController.clear();
    emailController.clear();
    confirmpasswordController.clear();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    emailController.dispose();
    fullnameController.dispose();
    confirmpasswordController.dispose();
    super.dispose;
  }
}
