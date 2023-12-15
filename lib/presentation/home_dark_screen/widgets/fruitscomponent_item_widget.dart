import '../models/fruitscomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FruitscomponentItemWidget extends StatelessWidget {
  FruitscomponentItemWidget(
    this.fruitscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FruitscomponentItemModel fruitscomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 73.adaptSize,
              width: 73.adaptSize,
              padding: EdgeInsets.all(19.h),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: CustomImageView(
                imagePath: fruitscomponentItemModelObj?.fruitImage,
                height: 35.adaptSize,
                width: 35.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              fruitscomponentItemModelObj.fruitText!,
              style: CustomTextStyles.titleSmallOnErrorContainer,
            ),
          ],
        ),
      ),
    );
  }
}
