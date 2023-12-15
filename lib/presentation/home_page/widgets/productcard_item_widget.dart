import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214.v,
      width: 163.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 214.v,
              width: 163.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 12.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 98.v,
                    width: 112.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: appTheme.black900,
                        width: 1.h,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.img92f1ea7dcce3b5d98x112,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      productcardItemModelObj.h!,
                      style: CustomTextStyles.titleSmallGray90001,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          productcardItemModelObj.price!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseOnerrorcontainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
