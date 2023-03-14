import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayerFour extends StatefulWidget {
  const LayerFour({super.key});

  @override
  State<LayerFour> createState() => _LayerFourState();
}

var selectedCountry = "Tunis";
var grade = "CC";
bool isChecked = false;

class _LayerFourState extends State<LayerFour> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          //Nom
          Positioned(
            left: 59.sp,
            top: 99.sp,
            child: Text(
              'Nom :',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 120.sp,
              child: Container(
                width: 130.w,
                child: const TextField(
                  cursorColor: primary,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person_pin, color: primary),
                      border: UnderlineInputBorder(),
                      hintText: 'votre nom ',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //prénom
          Positioned(
            left: 220.sp,
            top: 99.sp,
            child: Text(
              'Prénom :',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 220.sp,
              top: 120.sp,
              child: Container(
                width: 130.w,
                child: const TextField(
                  cursorColor: primary,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Votre prénom',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //date de naissance
          Positioned(
            left: 59.sp,
            top: 180.sp,
            child: Text(
              'Date de naissance',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 50.sp,
              top: 199.sp,
              child: Container(
                width: 310.w,
                child: TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      label: Text("${date.day}/${date.month}/${date.year}"),
                      labelStyle: const TextStyle(color: primary),
                      icon: IconButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100));
                          },
                          icon: const Icon(
                            Icons.edit_calendar,
                            color: primary,
                          )),
                      border: const UnderlineInputBorder(),
                      hintText: 'jj/mm/an',
                      hintStyle: const TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2.sp))),
                ),
              )),

          //email
          Positioned(
            left: 59.sp,
            top: 260.sp,
            child: Text(
              'Email',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 280.sp,
              child: Container(
                width: 310.w,
                child: const TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email, color: primary),
                      border: UnderlineInputBorder(),
                      hintText: 'Votre adresse email',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //numéro de téléphone
          Positioned(
            left: 59.sp,
            top: 340.sp,
            child: Text(
              'Téléphone',
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
                width: 310.w,
                child: const TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone, color: primary),
                      border: UnderlineInputBorder(),
                      hintText: 'Votre numéro de téléphone',
                      hintStyle: TextStyle(color: hintText),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2))),
                ),
              )),

          //Gouvernement
          Positioned(
            left: 59.sp,
            top: 420.sp,
            child: Text(
              'Gouvernement',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59.sp,
              top: 440.sp,
              child: Container(
                  width: 130.w,
                  child: DropdownButton(
                    items: [
                      "Ariana",
                      "Béja",
                      "Ben Arous",
                      "Bizerte",
                      "Gabès",
                      "Gafsa",
                      "Jendouba",
                      "Kairouan",
                      "Kasserine",
                      "Kébili",
                      "Kef",
                      "Mahdia",
                      "Manouba",
                      "Médenine",
                      "Monastir",
                      "Nabeul",
                      "Sfax",
                      "Sidi Bouzid",
                      "Siliana",
                      "Sousse",
                      "Tataouine",
                      "Tozeur",
                      "Tunis",
                      "Zaghouan"
                    ]
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(color: primary),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedCountry = val!;
                      });
                    },
                    value: selectedCountry,
                    hint: const Text("Ville"),
                    borderRadius: BorderRadius.circular(35.sp),
                    dropdownColor: layerTwoBg,
                  ))),
          Positioned(
              left: 220.sp,
              top: 440.sp,
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
              left: 260.sp,
              top: 453.sp,
              child: Text(
                'Valider',
                style: TextStyle(
                    color: primary,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins-Medium',
                    fontWeight: FontWeight.w500),
              )),

          //footer
          Positioned(
              top: 520.sp,
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
                            Navigator.of(context).pushNamed('login');
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
