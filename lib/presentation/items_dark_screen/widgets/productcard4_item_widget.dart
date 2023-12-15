import '../models/productcard4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productcard4ItemWidget extends StatelessWidget {
  Productcard4ItemWidget(
    this.productcard4ItemModelObj, {
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

  Productcard4ItemModel productcard4ItemModelObj;

  VoidCallback? onTapProductCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCard!.call();
      },
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 12.v),
            CustomImageView(
              imagePath: productcard4ItemModelObj?.image,
              height: 98.v,
              width: 112.h,
            ),
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  productcard4ItemModelObj.title!,
                  style: CustomTextStyles.titleSmallOnErrorContainerBold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    productcard4ItemModelObj.description!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
