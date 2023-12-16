import '../items_screen/widgets/productcard1_item_widget.dart';
import 'models/items_model.dart';
import 'models/productcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/items_provider.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  ItemsScreenState createState() => ItemsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ItemsProvider(), child: ItemsScreen());
  }
}

class ItemsScreenState extends State<ItemsScreen> {
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
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 23.h, top: 26.v, right: 23.h),
                child: Consumer<ItemsProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 215.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: BouncingScrollPhysics(),
                      itemCount:
                          provider.itemsModelObj.productcard1ItemList.length,
                      itemBuilder: (context, index) {
                        Productcard1ItemModel model =
                            provider.itemsModelObj.productcard1ItemList[index];
                        return Productcard1ItemWidget(model,
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
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_vegetables2".tr, margin: EdgeInsets.only(left: 63.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEarOfCorn,
              margin: EdgeInsets.fromLTRB(4.h, 20.v, 6.h, 14.v)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgLeft1,
              margin: EdgeInsets.only(left: 63.h, top: 6.v, right: 30.h))
        ]);
  }

  /// Navigates to the itemDetailsScreen when the action is triggered.
  onTapProductCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.itemDetailsScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
