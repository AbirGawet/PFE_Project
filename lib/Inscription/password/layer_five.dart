import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayerFive extends StatelessWidget {
  const LayerFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 59.sp,
            top: 99.sp,
            child: Text(
              'Email',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 129.sp,
              child: Container(
                width: 310.w,
                child: TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: const TextStyle(color: hintText),
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: primary,
                        size: 15.sp,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2.sp))),
                ),
              )),
          Positioned(
              top: 200.sp,
              right: 90.sp,
              child: Container(
                width: 150.w,
                height: 35.h,
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
                        Navigator.of(context).pushNamed('Home');
                      },
                      child: Text(
                        'Envoyer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins-Medium',
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              )),
          Positioned(
            left: 100.sp,
            top: 260.sp,
            child: const Text(
              'Retourner à la page d\'insription',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium', fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
