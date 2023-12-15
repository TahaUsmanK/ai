import '../item_details_dark_screen/widgets/userprofile2_item_widget.dart';
import 'models/item_details_dark_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';
import 'provider/item_details_dark_provider.dart';

class ItemDetailsDarkScreen extends StatefulWidget {
  const ItemDetailsDarkScreen({Key? key}) : super(key: key);

  @override
  ItemDetailsDarkScreenState createState() => ItemDetailsDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ItemDetailsDarkProvider(),
        child: ItemDetailsDarkScreen());
  }
}

class ItemDetailsDarkScreenState extends State<ItemDetailsDarkScreen> {
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
                child: Column(children: [
                  _buildEighteen(context),
                  _buildItemDetailsDark(context)
                ])),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return SizedBox(
        height: 376.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse225376x390,
              height: 376.v,
              width: 390.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 44.v,
                        leadingWidth: 68.h,
                        leading: AppbarLeadingIconbuttonTwo(
                            imagePath:
                                ImageConstant.imgArrowLeftOnerrorcontainer,
                            margin: EdgeInsets.only(left: 24.h),
                            onTap: () {
                              onTapArrowLeft(context);
                            }),
                        actions: [
                          AppbarTrailingIconbuttonTwo(
                              imagePath: ImageConstant.imgLeft1Onerrorcontainer,
                              margin: EdgeInsets.symmetric(horizontal: 24.h))
                        ]),
                    SizedBox(height: 36.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgPngfuel3,
                        height: 224.v,
                        width: 249.h)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildItemDetailsDark(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text("lbl_arabic_ginger".tr,
                    style: theme.textTheme.headlineSmall)),
            Spacer(),
            CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                child: CustomImageView(
                    imagePath: ImageConstant.imgUserBlueGray90001)),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 5.v),
                child: Text("lbl_4".tr,
                    style: CustomTextStyles.titleMediumOnErrorContainer18)),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    child: CustomImageView(imagePath: ImageConstant.imgPlus)))
          ]),
          SizedBox(height: 6.v),
          Text("lbl_1kg_4".tr, style: CustomTextStyles.titleLargeRedA400),
          SizedBox(height: 7.v),
          Container(
              width: 316.h,
              margin: EdgeInsets.only(right: 25.h),
              child: Text("msg_ginger_is_a_flowering".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumBluegray500)),
          SizedBox(height: 21.v),
          Consumer<ItemDetailsDarkProvider>(
              builder: (context, provider, child) {
            return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 68.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: provider
                    .itemDetailsDarkModelObj.userprofile2ItemList.length,
                itemBuilder: (context, index) {
                  Userprofile2ItemModel model = provider
                      .itemDetailsDarkModelObj.userprofile2ItemList[index];
                  return Userprofile2ItemWidget(model);
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 29.v),
        onPressed: () {
          onTapAddToCart(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the cartDarkScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartDarkScreen,
    );
  }
}
