import '../models/ninetynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NinetynineItemWidget extends StatelessWidget {
  NinetynineItemWidget(
    this.ninetynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetynineItemModel ninetynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: CustomImageView(
        imagePath: ninetynineItemModelObj?.image,
        height: 158.v,
        width: 342.h,
        radius: BorderRadius.circular(
          16.h,
        ),
        margin: EdgeInsets.only(right: 374.h),
      ),
    );
  }
}
