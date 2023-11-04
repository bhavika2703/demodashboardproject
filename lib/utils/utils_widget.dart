
import 'package:flutter/material.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/dimensions.dart';
import 'package:projectstruc/utils/images.dart';
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


Container willieMaysCircleAvtarView({
  required String title,
  String? image,
}) {
  return Container(
    margin: const EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColor.circleAvatarGray,
          child: Image.asset(AppImages.gallaryIconImage,
              fit: BoxFit.cover, height: 16, width: 16),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(title,
            style: robotoSemiBold.copyWith(
                color: AppColor.grayText, fontSize: 14)),
      ],
    ),
  );
}
