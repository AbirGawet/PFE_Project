import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayerTwo extends StatelessWidget {
  const LayerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399.w,
      height: 584.h,
      decoration: BoxDecoration(
        color: layerTwoBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0.sp),
          bottomRight: Radius.circular(60.0.sp),
          bottomLeft: Radius.circular(60.0.sp),
        ),
      ),
    );
  }
}
