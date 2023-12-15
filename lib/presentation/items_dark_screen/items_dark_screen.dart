import '../items_dark_screen/widgets/productcard4_item_widget.dart';
import 'models/items_dark_model.dart';
import 'models/productcard4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/items_dark_provider.dart';

class ItemsDarkScreen extends StatefulWidget {
  const ItemsDarkScreen({Key? key}) : super(key: key);

  @override
  ItemsDarkScreenState createState() => ItemsDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ItemsDarkProvider(), child: ItemsDarkScreen());
  }
}

class ItemsDarkScreenState extends State<ItemsDarkScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 23.h, top: 26.v, right: 23.h),
                child: Consumer<ItemsDarkProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 215.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: BouncingScrollPhysics(),
                      itemCount: provider
                          .itemsDarkModelObj.productcard4ItemList.length,
                      itemBuilder: (context, index) {
                        Productcard4ItemModel model = provider
                            .itemsDarkModelObj.productcard4ItemList[index];
                        return Productcard4ItemWidget(model,
                            onTapProductCard: () {
                          onTapProductCard(context);
                        });
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_vegetables2".tr, margin: EdgeInsets.only(left: 63.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEarOfCorn,
              margin: EdgeInsets.fromLTRB(4.h, 20.v, 6.h, 14.v)),
          AppbarTrailingIconbuttonTwo(
              imagePath: ImageConstant.imgLeft1Onerrorcontainer,
              margin: EdgeInsets.only(left: 63.h, top: 6.v, right: 30.h))
        ]);
  }

  /// Navigates to the itemDetailsDarkScreen when the action is triggered.
  onTapProductCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.itemDetailsDarkScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
