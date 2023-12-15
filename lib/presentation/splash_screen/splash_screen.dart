import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
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
                        decoration: AppDecoration.fillOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder55),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                            height: 55.v,
                            width: 67.h,
                            alignment: Alignment.centerLeft))))));
  }

  /// Navigates to the introScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.introScreen,
    );
  }
}
