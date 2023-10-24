import 'package:flutter/material.dart';
import 'package:linguasign_app/src/helpers/color.dart';

class authTextField extends StatelessWidget {
  final TextInputType keyboordType;
  
  final width;
  final hinttext;
  final suffixicon;
  final prefixicon;
  final validator;
  final textController;
  final bool isPassword;

  const authTextField({
    super.key,
    this.width,
    this.hinttext,
    this.isPassword = false,
    this.prefixicon,
    this.suffixicon,
    this.textController,
    this.validator,
    required this.keyboordType
  });

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: TextFormField(
        keyboardType: keyboordType,
        obscureText: isPassword,
        autocorrect: false,
        enableSuggestions: false,
        controller: textController,
        validator: validator,
        cursorColor: AppColors.BorderColor,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(width: 2, color: AppColors.BorderColor),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(width: 1, color: AppColors.BorderColor),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(
                width: 1,
              )),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(width: 1, color: AppColors.alertColor)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(width: 1, color: AppColors.ButtonGr1)),
          hintText: hinttext,
          hintStyle: const TextStyle(color: AppColors.BorderColor),
          prefixIcon: prefixicon,
          suffixIcon: suffixicon,
        ),
      ),
    );
  }
}
