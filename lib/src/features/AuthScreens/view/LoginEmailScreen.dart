import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:linguasign_app/src/features/AuthScreens/viewmodel/AuthView.dart';
import 'package:linguasign_app/src/features/AuthScreens/widgets/authtextfield.dart';
import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/helpers/toast.dart';
import 'package:linguasign_app/src/widgets/GlobalButton.dart';
import 'package:provider/provider.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.read<AuthViewModel>();

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Mask Group 6.png',
                ),
                fit: BoxFit.cover)),
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
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: SafeArea(
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: SingleChildScrollView(
                          child: Form(
                            key: formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  40.verticalSpace,
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Group 12030.png',
                                      scale: 3,
                                    ),
                                  ),
                                  30.verticalSpace,
                                  Row(
                                    children: [
                                      Text(
                                        "Email Address",
                                        style: TextStyle(
                                            color: AppColors.BorderColor),
                                      ),
                                    ],
                                  ),
                                  authTextField(
                                    keyboordType: TextInputType.emailAddress,
                                    hinttext: "Enter Your Email Address",
                                    textController:
                                        loginViewModel.emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid email Address';
                                      }
                                    },
                                    isPassword: false,
                                    prefixicon: Icon(
                                      Icons.email,
                                      color: AppColors.BorderColor,
                                    ),
                                  ),
                                  20.verticalSpace,
                                  GestureDetector(
                                    onTap: () {
                                      if (formKey.currentState!.validate()) {
                                        loginViewModel.loginemail(context);
                                      } else {
                                        showtoast(
                                            "Please Enter Valid Email Address");
                                      }
                                    },
                                    child: GlobalButton(
                                      title: "Login",
                                    ),
                                  ),
                                ]),
                          ),
                        ))))));
  }
}
