import '../cart_dark_screen/widgets/productcard5_item_widget.dart';
import 'models/cart_dark_model.dart';
import 'models/productcard5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'provider/cart_dark_provider.dart';

class CartDarkScreen extends StatefulWidget {
  const CartDarkScreen({Key? key}) : super(key: key);

  @override
  CartDarkScreenState createState() => CartDarkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartDarkProvider(), child: CartDarkScreen());
  }
}

class CartDarkScreenState extends State<CartDarkScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 35.v),
                  _buildProductCard(context)
                ])),
            bottomNavigationBar: _buildCheckout(context)));
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
            text: "lbl_cart".tr, margin: EdgeInsets.only(left: 94.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBasket,
              margin: EdgeInsets.fromLTRB(4.h, 18.v, 161.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Expanded(
        child: Consumer<CartDarkProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.v),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.blueGray900)));
          },
          itemCount: provider.cartDarkModelObj.productcard5ItemList.length,
          itemBuilder: (context, index) {
            Productcard5ItemModel model =
                provider.cartDarkModelObj.productcard5ItemList[index];
            return Productcard5ItemWidget(model);
          });
    }));
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_checkout".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 29.v),
        onPressed: () {
          onTapCheckout(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the trackOrderDarkTabContainerScreen when the action is triggered.
  onTapCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackOrderDarkTabContainerScreen,
    );
  }
}
