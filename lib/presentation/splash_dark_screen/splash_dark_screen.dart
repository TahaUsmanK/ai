import 'models/splash_dark_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'provider/splash_dark_provider.dart';

class SplashDarkScreen extends StatefulWidget {
  const SplashDarkScreen({Key? key}) : super(key: key);

  @override
  SplashDarkScreenState createState() => SplashDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashDarkProvider(), child: SplashDarkScreen());
  }
}

class SplashDarkScreenState extends State<SplashDarkScreen> {
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
                width: double.maxFinite,
                child: GestureDetector(
                    onTap: () {
                      onTapOne(context);
                    },
                    child: Container(
                        height: 110.adaptSize,
                        width: 110.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 26.v),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder55),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                            height: 55.v,
                            width: 67.h,
                            alignment: Alignment.centerLeft))))));
  }

  /// Navigates to the introDarkScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.introDarkScreen,
    );
  }
}
