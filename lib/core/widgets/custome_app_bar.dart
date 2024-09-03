import 'package:checkout_payment/core/utils/constant/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constant/app_styles.dart';

AppBar customeAppBar({final String? title}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title ?? '',
      style: AppStyles.styleMedium25,
    ),
    backgroundColor: Colors.transparent,
    leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
  );
}
