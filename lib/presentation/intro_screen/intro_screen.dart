import 'models/intro_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';
import 'provider/intro_provider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => IntroProvider(), child: IntroScreen());
  }
}

class IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.introDarkScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 437.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        _buildOneSection(context),
                        CustomImageView(
                            imagePath: ImageConstant.imgKindpng733635452x30,
                            height: 52.v,
                            width: 30.h,
                            alignment: Alignment.bottomRight),
                        _buildFrameFourSection(context)
                      ])),
                  SizedBox(height: 51.v),
                  _buildPaperBagWithSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildOneSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 31.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup1),
                    fit: BoxFit.cover)),
            child: CustomImageView(
                imagePath: ImageConstant.imgKindpng7336354,
                height: 52.v,
                width: 47.h)));
  }

  /// Section Widget
  Widget _buildFrameFourSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 37.h, right: 37.h, bottom: 13.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomIconButton(
                  height: 66.adaptSize,
                  width: 66.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillOnErrorContainer,
                  child: CustomImageView(imagePath: ImageConstant.imgClose)),
              SizedBox(height: 32.v),
              SizedBox(
                  width: 316.h,
                  child: Text("msg_get_your_groceries".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium)),
              SizedBox(height: 18.v),
              Container(
                  width: 269.h,
                  margin: EdgeInsets.only(left: 22.h, right: 24.h),
                  child: Text("msg_the_best_delivery".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray500)),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                  width: 190.h,
                  text: "lbl_shop_now".tr,
                  onPressed: () {
                    onTapShopNow(context);
                  })
            ])));
  }

  /// Section Widget
  Widget _buildPaperBagWithSection(BuildContext context) {
    return SizedBox(
        height: 355.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPaperBagWith,
              height: 335.v,
              width: 390.h,
              alignment: Alignment.bottomCenter),
          CustomImageView(
              imagePath: ImageConstant.imgKindpng733635439x41,
              height: 39.v,
              width: 41.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 36.h))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapShopNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
