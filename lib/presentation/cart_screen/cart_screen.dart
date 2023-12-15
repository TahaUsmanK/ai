import '../cart_screen/widgets/productcard2_item_widget.dart';
import 'models/cart_model.dart';
import 'models/productcard2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tahausmank_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tahausmank_s_application1/widgets/custom_elevated_button.dart';
import 'provider/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  CartScreenState createState() => CartScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartProvider(), child: CartScreen());
  }
}

class CartScreenState extends State<CartScreen> {
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
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
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
        child: Consumer<CartProvider>(builder: (context, provider, child) {
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
                        color: appTheme.gray10001)));
          },
          itemCount: provider.cartModelObj.productcard2ItemList.length,
          itemBuilder: (context, index) {
            Productcard2ItemModel model =
                provider.cartModelObj.productcard2ItemList[index];
            return Productcard2ItemWidget(model);
          });
    }));
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_checkout".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 29.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
