import 'package:arvea/Inscription/password/layer_five.dart';
import 'package:arvea/Inscription/Login/layers/layer_one.dart';
import 'package:arvea/Inscription/Login/layers/layer_three.dart';
import 'package:arvea/Inscription/Login/layers/layer_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Password extends StatelessWidget {
  const Password({super.key});

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
                top: 110.sp,
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
                left: 55.sp,
                child: Text(
                  'Mot de passe oublié',
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontFamily: AutofillHints.addressCity,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
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
                top: 250.sp,
                right: 0.sp,
                bottom: 18.sp,
                child: const LayerFive()),
          ],
        ),
      ),
    );
  }
}
