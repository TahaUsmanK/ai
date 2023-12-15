import '../home_dark_screen/widgets/fruitscomponent_item_widget.dart';
import '../home_dark_screen/widgets/ninetynine_item_widget.dart';
import '../home_dark_screen/widgets/productcard3_item_widget.dart';
import 'models/fruitscomponent_item_model.dart';
import 'models/home_dark_model.dart';
import 'models/ninetynine_item_model.dart';
import 'models/productcard3_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_bottom_bar.dart';
import 'package:tahausmank_s_application1/widgets/custom_drop_down.dart';
import 'package:tahausmank_s_application1/widgets/custom_icon_button.dart';
import 'package:tahausmank_s_application1/widgets/custom_search_view.dart';
import 'provider/home_dark_provider.dart';

class HomeDarkScreen extends StatefulWidget {
  const HomeDarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeDarkScreenState createState() => HomeDarkScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeDarkProvider(),
      child: HomeDarkScreen(),
    );
  }
}

class HomeDarkScreenState extends State<HomeDarkScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildGrabOfferStack(context),
              SizedBox(height: 25.v),
              _buildCategoriesColumn(context),
              SizedBox(height: 23.v),
              _buildBestSellingColumn(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrabOfferStack(BuildContext context) {
    return SizedBox(
      height: 324.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 263.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse225263x390,
                    height: 263.v,
                    width: 390.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 24.v,
                        right: 24.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                decoration: IconButtonStyleHelper
                                    .fillOnErrorContainerTL22,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPlayPrimarycontainer,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  top: 5.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text(
                                        "lbl_good_morning".tr,
                                        style: CustomTextStyles
                                            .labelLargeBluegray500_1,
                                      ),
                                    ),
                                    Text(
                                      "lbl_amelia_barlow".tr,
                                      style: CustomTextStyles
                                          .titleMediumOnErrorContainerMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Selector<HomeDarkProvider, HomeDarkModel?>(
                                selector: (
                                  context,
                                  provider,
                                ) =>
                                    provider.homeDarkModelObj,
                                builder: (context, homeDarkModelObj, child) {
                                  return CustomDropDown(
                                    width: 115.h,
                                    hintText: "lbl_my_flat".tr,
                                    items: homeDarkModelObj?.dropdownItemList ??
                                        [],
                                    prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 12.v, 8.h, 12.v),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin,
                                        height: 18.v,
                                        width: 15.h,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 42.v,
                                    ),
                                    borderDecoration:
                                        DropDownStyleHelper.fillBlueGray,
                                    fillColor: appTheme.blueGray90001,
                                    onChanged: (value) {
                                      context
                                          .read<HomeDarkProvider>()
                                          .onSelected(value);
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 24.v),
                          Selector<HomeDarkProvider, TextEditingController?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.searchController,
                            builder: (context, searchController, child) {
                              return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search_category".tr,
                                borderDecoration:
                                    SearchViewStyleHelper.fillBlueGray,
                                fillColor: appTheme.blueGray90001,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Consumer<HomeDarkProvider>(
            builder: (context, provider, child) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 158.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    provider.sliderIndex = index;
                  },
                ),
                itemCount: provider.homeDarkModelObj.ninetynineItemList.length,
                itemBuilder: (context, index, realIndex) {
                  NinetynineItemModel model =
                      provider.homeDarkModelObj.ninetynineItemList[index];
                  return NinetynineItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          _buildBestSellingRow(
            context,
            bestSellingText: "lbl_categories".tr,
            fireImage: ImageConstant.imgFaceSavoringFood,
            seeAllText: "lbl_see_all".tr,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 101.v,
            child: Consumer<HomeDarkProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount:
                      provider.homeDarkModelObj.fruitscomponentItemList.length,
                  itemBuilder: (context, index) {
                    FruitscomponentItemModel model = provider
                        .homeDarkModelObj.fruitscomponentItemList[index];
                    return FruitscomponentItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestSellingColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          _buildBestSellingRow(
            context,
            bestSellingText: "lbl_best_selling".tr,
            fireImage: ImageConstant.imgFire,
            seeAllText: "lbl_see_all".tr,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 214.v,
            child: Consumer<HomeDarkProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount:
                      provider.homeDarkModelObj.productcard3ItemList.length,
                  itemBuilder: (context, index) {
                    Productcard3ItemModel model =
                        provider.homeDarkModelObj.productcard3ItemList[index];
                    return Productcard3ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildBestSellingRow(
    BuildContext context, {
    required String bestSellingText,
    required String fireImage,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bestSellingText,
          style: CustomTextStyles.titleMediumOnErrorContainer18.copyWith(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
          ),
        ),
        CustomImageView(
          imagePath: fireImage,
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            bottom: 5.v,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            seeAllText,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
