
import 'package:flutter/material.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/styles.dart';

Row lhpButtonView() {
  return Row(
    children: [
      Container(
          color: AppColor.darkGray,
          width: 28,
          height: 15,
          alignment: Alignment.center,
          child: Text(
            AppConstants.LHP_BUTTON,
            style: robotoSmall.copyWith(fontSize: 8),
          )),
      Container(
          color: AppColor.red,
          width: 28,
          height: 15,
          alignment: Alignment.center,
          child: Text(
            AppConstants.YEARS_BUTTON,
            style: robotoSmall.copyWith(fontSize: 8),
          )),
    ],
  );
}