import 'models/login_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_phone_number.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 66.adaptSize,
                      width: 66.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      decoration: IconButtonStyleHelper.fillGreen,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgClose)),
                  SizedBox(height: 15.v),
                  Container(
                      width: 240.h,
                      margin: EdgeInsets.only(left: 51.h, right: 50.h),
                      child: Text("msg_enter_your_mobile".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 14.v),
                  Text("msg_we_will_send_you".tr,
                      style: CustomTextStyles.titleMediumGray500),
                  SizedBox(height: 46.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34.h),
                      child: Consumer<LoginProvider>(
                          builder: (context, provider, child) {
                        return CustomPhoneNumber(
                            country: provider.selectedCountry ??
                                CountryPickerUtils.getCountryByPhoneCode('1'),
                            controller: provider.phoneNumberController,
                            onTap: (Country value) {
                              context
                                  .read<LoginProvider>()
                                  .changeCountry(value);
                            });
                      })),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  SizedBox(height: 24.v),
                  Container(
                      width: 319.h,
                      margin: EdgeInsets.only(left: 11.h, right: 10.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_by_clicking_on_continue2".tr,
                                style: CustomTextStyles
                                    .titleMediumGray50001Medium),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_terms_of_use".tr,
                                style: CustomTextStyles.titleMediumIndigoA200
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(24.h, 6.v, 322.h, 6.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
