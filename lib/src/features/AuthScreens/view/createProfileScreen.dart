import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linguasign_app/src/features/AuthScreens/widgets/dropdownlist.dart';
import 'package:linguasign_app/src/features/AuthScreens/widgets/profileTextField.dart';

import 'package:linguasign_app/src/features/HomeScreen/widgets/BottomnavBar.dart';
import 'package:linguasign_app/src/features/HomeScreen/widgets/navBarController.dart';
import 'dart:io';

import 'package:linguasign_app/src/helpers/color.dart';
import 'package:linguasign_app/src/widgets/GlobalButton.dart';
import 'package:provider/provider.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  File? _image;
  final picker = ImagePicker();

  Future getGalleryImage() async {
    final PickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
      } else {
        print('no image picked');
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                "Create Profile",
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
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                10.verticalSpace,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(clipBehavior: Clip.none, children: [
                                      GestureDetector(
                                        onTap: () {
                                          getGalleryImage();
                                        },
                                        child: Container(
                                          width: 115.w,
                                          height: 160.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.ButtonGr2,
                                                  width: 4),
                                              shape: BoxShape.circle),
                                          child: _image != null
                                              ? Image.file(_image!.absolute)
                                              : Container(
                                                  width: 70.w,
                                                  height: 70.h,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle),
                                                  child: Image.asset(
                                                    'assets/images/Ellipse 68.png',
                                                  ),
                                                ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          getGalleryImage();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 39),
                                          child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              'assets/images/Group 11015.png',
                                              height: 156,
                                              width: 130,
                                              alignment: Alignment.bottomRight,
                                              scale: 4.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                                topText('Full Name'),
                                5.verticalSpace,
                                ProfileText_Field(
                                  hint: 'Enter your Full name',
                                  prefixpath: 'assets/images/Mask Group 2.png',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Date of Birth'),
                                5.verticalSpace,
                                ProfileText_Field(
                                  hint: 'Enter your Date of Birth',
                                  prefixpath:
                                      'assets/images/Mask Group 2-1.png',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Gender'),
                                5.verticalSpace,
                                // ProfileText_Field(
                                //   hint: 'Select Gender',
                                // ),
                                MyDropdownWidget(
                                  options: const ["Male", "Female"],
                                  selectedValue: "Male",
                                  onChanged: (value) {},
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Language'),
                                5.verticalSpace,
                                MyDropdownWidget(
                                  options: const ["English", "French"],
                                  selectedValue: "English",
                                  onChanged: (value) {},
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Country'),
                                5.verticalSpace,
                                MyDropdownWidget(
                                  options: const ["USA", "UK"],
                                  selectedValue: "USA",
                                  onChanged: (value) {},
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Email ID'),
                                5.verticalSpace,
                                ProfileText_Field(
                                  hint: 'Enter your Email Address',
                                  prefixpath:
                                      'assets/images/Mask Group 2-2.png',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                topText('Phone Number'),
                                5.verticalSpace,
                                ProfileText_Field(
                                  hint: 'Enter your Phone number',
                                  prefixpath:
                                      'assets/images/Mask Group 2-3.png',
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                    onTap: () {
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
                                    child: GlobalButton(title: "Create")),
                                40.verticalSpace,
                              ]),
                        ))))));
  }

  Align topText(
    final String txt,
  ) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        txt,
        style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.FieldTxtlabelColor),
      ),
    );
  }
}
