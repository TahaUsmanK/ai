import '../models/productcard5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productcard5ItemWidget extends StatelessWidget {
  Productcard5ItemWidget(
    this.productcard5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard5ItemModel productcard5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: productcard5ItemModelObj?.productImage,
            height: 42.v,
            width: 48.h,
            margin: EdgeInsets.only(bottom: 19.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productcard5ItemModelObj.productTitle!,
                  style: CustomTextStyles.titleMediumOnErrorContainer,
                ),
                SizedBox(height: 3.v),
                Text(
                  productcard5ItemModelObj.productDescription!,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 22.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserBlueGray90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 9.v,
              bottom: 27.v,
            ),
            child: Text(
              productcard5ItemModelObj.quantity!,
              style: CustomTextStyles.titleMediumOnErrorContainer18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 22.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
