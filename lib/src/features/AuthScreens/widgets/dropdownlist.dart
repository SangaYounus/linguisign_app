import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyDropdownWidget extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final Function(String) onChanged;

  const MyDropdownWidget({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 27,
        color: Colors.grey,
      ),
      style: TextStyle(
        color: const Color(0xff9C9C9C),
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        hintStyle: TextStyle(
          color: const Color(0xff9C9C9C),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        fillColor: Colors.white, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9C9C9C),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
      value: selectedValue,
      items: options
          .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
          .toList(),
      onChanged: (s) => onChanged(s!),
    );
  }
}
