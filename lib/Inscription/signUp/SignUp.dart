import 'package:arvea/Inscription/signUp/layers/layer_four.dart';
import 'package:arvea/Inscription/Login/layers/layer_one.dart';
import 'package:arvea/Inscription/Login/layers/layer_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                top: 70.sp,
                left: 150.sp,
                child: Text(
                  'yAT !',
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontFamily: AutofillHints.addressCity,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
            Positioned(
                top: 100.sp,
                left: 50.sp,
                child: Text(
                  'Create your Arvea Team',
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontFamily: AutofillHints.addressCity,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                )),
            Positioned(
                top: 150.sp,
                right: 0.sp,
                bottom: 0.sp,
                child: const LayerOne()),
            Positioned(
                top: 180.sp,
                left: 10.sp,
                bottom: 0.sp,
                child: const LayerTwo()),
            Positioned(
                top: 110.sp,
                right: 0.sp,
                bottom: 18.sp,
                child: const LayerFour()),
          ],
        ),
      ),
    );
  }
}
