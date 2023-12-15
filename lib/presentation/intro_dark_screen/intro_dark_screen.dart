import 'models/intro_dark_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';
import 'provider/intro_dark_provider.dart';

class IntroDarkScreen extends StatefulWidget {
  const IntroDarkScreen({Key? key}) : super(key: key);

  @override
  IntroDarkScreenState createState() => IntroDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => IntroDarkProvider(), child: IntroDarkScreen());
  }
}

class IntroDarkScreenState extends State<IntroDarkScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPaperBagWith338x390,
                      height: 338.v,
                      width: 390.h,
                      alignment: Alignment.bottomCenter),
                  _buildIntroDarkColumn(context)
                ]))));
  }

  /// Section Widget
  Widget _buildIntroDarkColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgKindpng7336354,
                      height: 52.v,
                      width: 47.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 26.h)),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 13.v),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 66.adaptSize,
                                          width: 66.adaptSize,
                                          padding: EdgeInsets.all(11.h),
                                          decoration: IconButtonStyleHelper
                                              .fillBlueGray,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgClose)),
                                      SizedBox(height: 32.v),
                                      SizedBox(
                                          width: 316.h,
                                          child: Text(
                                              "msg_get_your_groceries".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .headlineMediumOnErrorContainer)),
                                      SizedBox(height: 18.v),
                                      SizedBox(
                                          width: 269.h,
                                          child: Text(
                                              "msg_the_best_delivery".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleMediumBluegray500)),
                                      SizedBox(height: 37.v),
                                      CustomElevatedButton(
                                          width: 190.h,
                                          text: "lbl_shop_now".tr,
                                          onPressed: () {
                                            onTapShopNow(context);
                                          })
                                    ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgKindpng733635452x30,
                                height: 52.v,
                                width: 30.h,
                                margin: EdgeInsets.only(left: 6.h, top: 290.v))
                          ])),
                  SizedBox(height: 51.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgKindpng73363541,
                      height: 39.v,
                      width: 41.h)
                ])));
  }

  /// Navigates to the loginDarkScreen when the action is triggered.
  onTapShopNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginDarkScreen,
    );
  }
}
