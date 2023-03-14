import 'package:arvea/Inscription/Login/layers/layer_one.dart';
import 'package:arvea/Inscription/Login/layers/layer_three.dart';
import 'package:arvea/Inscription/Login/layers/layer_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/primaryBg.png'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 120.sp,
                left: 50.sp,
                child: Text(
                  'yAT !',
                  style: TextStyle(
                      fontSize: 48.sp,
                      fontFamily: AutofillHints.addressCity,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
            Positioned(
                top: 170.sp,
                left: 50.sp,
                child: Text(
                  'your Arvea Team',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontFamily: AutofillHints.addressCity,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 210.sp,
                right: 0.sp,
                bottom: 0.sp,
                child: const LayerOne()),
            Positioned(
                top: 230.sp,
                left: 10.sp,
                bottom: 0.sp,
                child: const LayerTwo()),
            Positioned(
                top: 160.sp,
                right: 0.sp,
                bottom: 18.sp,
                child: const LayerThree()),
          ],
        ),
      ),
    );
  }
}
