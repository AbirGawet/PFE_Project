import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LayerSix extends StatefulWidget {
  const LayerSix({super.key});

  @override
  State<LayerSix> createState() => _LayerSixState();
}

var grade = "CC";

class _LayerSixState extends State<LayerSix> {
  late File image;
  final imagePicker = ImagePicker();
  uploadImage() async {
    var pickedImage = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 100.sp,
              right: 110.sp,
              child: CircleAvatar(
                  backgroundImage: const AssetImage('images/primaryBg.png'),
                  radius: 60.sp,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.photo_camera,
                      color: primary,
                    ),
                    onPressed: uploadImage,
                  ))),
          //Nom d'équipe
          Positioned(
            left: 59.sp,
            top: 250.sp,
            child: Text(
              'Nom d\'équipe',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 270.sp,
              child: Container(
                width: 310.w,
                child: const TextField(
                  cursorColor: primary,
                  decoration: InputDecoration(
                      label: Text('Optionnelle'),
                      labelStyle: TextStyle(color: primary),
                      border: UnderlineInputBorder(),
                      hintText: 'Choisir le nom de votre équipe',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //Grade
          Positioned(
            left: 59.sp,
            top: 340.sp,
            child: Text(
              'Grade',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 360.sp,
              child: Container(
                  width: 130.w,
                  child: DropdownButton(
                    items: [
                      "CC",
                      "Junior",
                      "Senior",
                      "Expert",
                      "Leader",
                      "Manager",
                    ]
                        .map((i) => DropdownMenuItem(
                              value: i,
                              child: Text(
                                i,
                                style: const TextStyle(color: primary),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        grade = val!;
                      });
                    },
                    value: grade,
                    hint: const Text("grade"),
                    borderRadius: BorderRadius.circular(35.sp),
                    dropdownColor: layerTwoBg,
                  ))),

          Positioned(
            top: 340.w,
            right: 10.sp,
            child: Container(
              width: 150.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.sp),
                    bottomRight: Radius.circular(20.sp)),
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.sp),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('signup');
                    },
                    child: Text(
                      'Suivant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Poppins-Medium',
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
          ),
          //footer
          Positioned(
            top: 480.sp,
            left: 30.sp,
            right: 30.sp,
            child: Container(
              width: 150.w,
              height: 48.h,
              child: Image.asset(
                'images/Logo.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
