import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            SizedBox(
              height: 73.adaptSize,
              width: 73.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 73.adaptSize,
                      width: 73.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          36.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 35.v,
                      width: 29.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty2,
                            height: 27.v,
                            width: 29.h,
                            alignment: Alignment.bottomCenter,
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty3,
                            height: 6.v,
                            width: 14.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 7.v),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty4,
                            height: 16.v,
                            width: 15.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 7.v),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty5,
                            height: 11.v,
                            width: 10.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 5.h),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty6,
                            height: 11.v,
                            width: 8.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 5.h),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty7,
                            height: 9.v,
                            width: 7.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              right: 7.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty8,
                            height: 10.v,
                            width: 5.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 10.h,
                              top: 1.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty9,
                            height: 8.v,
                            width: 26.h,
                            alignment: Alignment.bottomCenter,
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty10,
                            height: 11.v,
                            width: 19.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 10.v),
                          ),
                          CustomImageView(
                            imagePath:
                                userprofileItemModelObj?.dynamicProperty11,
                            height: 2.v,
                            width: 10.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 10.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector18x16,
                            height: 18.v,
                            width: 16.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              userprofileItemModelObj.dynamicProperty13!,
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
