import 'package:flutter/material.dart';
import 'package:arvea/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayerOne extends StatelessWidget {
  const LayerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 654.h,
      decoration: BoxDecoration(
        color: layerOneBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0.sp),
            bottomRight: Radius.circular(60.0.sp)),
      ),
    );
  }
}
