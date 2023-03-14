import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class LayerThree extends StatefulWidget {
  const LayerThree({super.key});

  @override
  State<LayerThree> createState() => _LayerThreeState();
}

bool isChecked = false;

class _LayerThreeState extends State<LayerThree> {
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
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: const TextStyle(color: hintText),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 20.sp,
                        color: primary,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2.sp))),
                ),
              )),
          Positioned(
            left: 59.sp,
            top: 199.sp,
            child: Text(
              'Mot de passe',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 229.sp,
              child: Container(
                width: 310.w,
                child: TextField(
                  obscureText: true,
                  cursorColor: primary,
                  decoration: InputDecoration(
                      hintText: 'Votre mot de passe',
                      hintStyle: const TextStyle(color: hintText),
                      prefixIcon: Icon(
                        Icons.remove_red_eye,
                        size: 20.sp,
                        color: primary,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2.sp))),
                ),
              )),
          Positioned(
              right: 0.sp,
              top: 276.sp,
              child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("password");
                  },
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('password');
                    },
                    child: Text(
                      'Mot de passe oublié',
                      style: TextStyle(
                          color: primary,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins-Medium',
                          fontWeight: FontWeight.w600),
                    ),
                  ))),
          Positioned(
              left: 46.sp,
              top: 361.sp,
              child: Checkbox(
                activeColor: primary,
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    isChecked = val!;
                  });
                },
              )),
          Positioned(
              left: 87.sp,
              top: 375.sp,
              child: Text(
                'Valider',
                style: TextStyle(
                    color: primary,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins-Medium',
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
              top: 365.sp,
              right: 30.sp,
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
                        'Se connecter',
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
              top: 432.sp,
              left: 59.sp,
              child: Container(
                height: 0.5.h,
                width: 310.w,
                color: inputBorder,
              )),
          Positioned(
              top: 470.sp,
              left: 30.sp,
              right: 30.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 150.w,
                    height: 48.h,
                    child: Image.asset(
                      'images/Logo.png',
                    ),
                  ),
                  Container(
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
                            showDialog(
                                context: context,
                                builder: (_) => Dialog(
                                    backgroundColor: Colors.transparent,
                                    insetPadding: const EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Container(
                                            width: 400.w,
                                            height: 200.h,
                                            decoration: BoxDecoration(
                                              color: layerTwoBg,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(50.sp),
                                                  bottomRight:
                                                      Radius.circular(50.sp)),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 120.w,
                                                  child: Image.asset(
                                                    'images/Logo.png',
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Container(
                                                    child: Text(
                                                  'Créer un compte en tant qu\'un :',
                                                  style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                )),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Container(
                                                    height: 30.h,
                                                    width: 250.w,
                                                    decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      20.sp),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      20.sp)),
                                                    ),
                                                    child: MaterialButton(
                                                      textColor: Colors.white,
                                                      elevation: 20,
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pushNamed('next');
                                                      },
                                                      child: Text(
                                                        'Gérant',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Container(
                                                  height: 30.h,
                                                  width: 250.w,
                                                  decoration: BoxDecoration(
                                                    color: primary,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.sp),
                                                            bottomRight: Radius
                                                                .circular(
                                                                    20.sp)),
                                                  ),
                                                  child: MaterialButton(
                                                      textColor: Colors.white,
                                                      elevation: 20,
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pushNamed('next2');
                                                      },
                                                      child: Text(
                                                        'Nouveau membre',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                        ),
                                                      )),
                                                )
                                              ],
                                            )),
                                      ],
                                    )));
                          },
                          child: Text(
                            'S\'inscrire',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: 'Poppins-Medium',
                                fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
