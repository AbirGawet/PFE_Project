import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayerSeven extends StatefulWidget {
  const LayerSeven({super.key});

  @override
  State<LayerSeven> createState() => _LayerSevenState();
}

var grade = "CC";

class _LayerSevenState extends State<LayerSeven> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          //Nom d'équipe
          Positioned(
            left: 59.sp,
            top: 150.sp,
            child: Text(
              'Nom de gérant',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 170.sp,
              child: Container(
                width: 310.w,
                child: const TextField(
                  cursorColor: primary,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Saisie le nom de votre gérant',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //émail gérant
          Positioned(
            left: 59.sp,
            top: 250.sp,
            child: Text(
              'Email de gérant',
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
                      border: UnderlineInputBorder(),
                      hintText: 'Saisie l\'émail de votre gérant',
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
