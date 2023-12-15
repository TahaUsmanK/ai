import '../home_page/widgets/clienttestimonials_item_widget.dart';
import '../home_page/widgets/productcard_item_widget.dart';
import '../home_page/widgets/userprofile_item_widget.dart';
import 'models/clienttestimonials_item_model.dart';
import 'models/home_model.dart';
import 'models/productcard_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/widgets/custom_drop_down.dart';
import 'package:tahausmank_s_application1/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomePage());
  }
}

class HomePageState extends State<HomePage> {
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
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnErrorContainer,
                child: SizedBox(
                    height: 761.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              height: 906.v,
                              width: 648.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  borderRadius: BorderRadius.circular(453.h)))),
                      _buildPlaylist(context),
                      _buildClientTestimonials(context),
                      _buildReviews(context),
                      _buildDoctorReviews(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.gray300,
                                  borderRadius: BorderRadius.circular(22.h)))),
                      Opacity(
                          opacity: 0.1,
                          child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 44.adaptSize,
                                  width: 44.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.gray60063,
                                      borderRadius:
                                          BorderRadius.circular(22.h))))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 28.v,
                                        width: 32.h,
                                        alignment: Alignment.topCenter),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowUp,
                                        height: 9.v,
                                        width: 30.h,
                                        alignment: Alignment.bottomCenter),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPath74,
                                        height: 1.v,
                                        width: 7.h,
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPath75,
                                        height: 5.v,
                                        width: 10.h,
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(bottom: 3.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPath76,
                                        height: 5.v,
                                        width: 6.h,
                                        alignment: Alignment.bottomLeft),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPath76,
                                        height: 5.v,
                                        width: 6.h,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(right: 1.h)),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 20.v,
                                            width: 18.h,
                                            margin: EdgeInsets.only(top: 5.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height: 6.v,
                                                          width: 7.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgThumbsUp,
                                                                    height: 6.v,
                                                                    width: 7.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath79,
                                                                    height: 2.v,
                                                                    width: 6.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height: 9.v,
                                                          width: 5.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 4.v),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath80,
                                                                    height: 4.v,
                                                                    width: 3.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath81,
                                                                    height: 5
                                                                        .adaptSize,
                                                                    width: 5
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath82,
                                                                    height: 2.v,
                                                                    width: 1.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 1
                                                                            .h)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath83,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    margin: EdgeInsets.only(
                                                                        top:
                                                                            1.v,
                                                                        right: 1
                                                                            .h))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height: 9.v,
                                                          width: 5.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 4.v),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath80,
                                                                    height: 4.v,
                                                                    width: 3.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath81,
                                                                    height: 5
                                                                        .adaptSize,
                                                                    width: 5
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath81,
                                                                    height: 5
                                                                        .adaptSize,
                                                                    width: 5
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath82,
                                                                    height: 2.v,
                                                                    width: 1.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    margin: EdgeInsets.only(
                                                                        left: 1
                                                                            .h)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath88,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    margin: EdgeInsets.only(
                                                                        left:
                                                                            1.h,
                                                                        top: 1
                                                                            .v))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCloseDeepOrange200,
                                                      height: 16.v,
                                                      width: 12.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                      onTap: () {
                                                        onTapImgClose(context);
                                                      }),
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath90,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 3.h,
                                                                  top: 9.v))),
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath90,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 9.v,
                                                                  right: 3.h))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath92,
                                                                height: 9.v,
                                                                width: 6.h),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath92,
                                                                height: 9.v,
                                                                width: 6.h)
                                                          ])),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPath94,
                                                      height: 1.v,
                                                      width: 2.h,
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: EdgeInsets.only(
                                                          left: 5.h, top: 5.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPath95,
                                                      height: 1.v,
                                                      width: 2.h,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 5.v,
                                                          right: 4.h)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPath96,
                                                      height: 3.v,
                                                      width: 1.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                      margin: EdgeInsets.only(
                                                          top: 8.v)),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.h,
                                                                  right: 7.h,
                                                                  bottom: 6.v),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath97,
                                                                    height: 1.v,
                                                                    width: 4.h),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath98,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 6.v),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath99,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPath99,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left: 4
                                                                            .h))
                                                              ])))
                                                ])))
                                  ])))
                    ])),
                Padding(
                    padding: EdgeInsets.only(left: 11.h, top: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_good_morning".tr,
                                  style: CustomTextStyles.labelLargeGray500)),
                          Text("lbl_amelia_barlow".tr,
                              style:
                                  CustomTextStyles.titleMediumOnPrimaryMedium)
                        ])),
                Spacer(),
                Selector<HomeProvider, HomeModel?>(
                    selector: (context, provider) => provider.homeModelObj,
                    builder: (context, homeModelObj, child) {
                      return CustomDropDown(
                          width: 115.h,
                          hintText: "lbl_my_flat".tr,
                          items: homeModelObj?.dropdownItemList ?? [],
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 12.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLinkedin,
                                  height: 18.v,
                                  width: 15.h)),
                          prefixConstraints: BoxConstraints(maxHeight: 42.v),
                          onChanged: (value) {
                            context.read<HomeProvider>().onSelected(value);
                          });
                    })
              ]),
              SizedBox(height: 23.v),
              Selector<HomeProvider, TextEditingController?>(
                  selector: (context, provider) => provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_category".tr);
                  })
            ])));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 754.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                provider.sliderIndex = index;
              }),
          itemCount: provider.homeModelObj.clienttestimonialsItemList.length,
          itemBuilder: (context, index, realIndex) {
            ClienttestimonialsItemModel model =
                provider.homeModelObj.clienttestimonialsItemList[index];
            return ClienttestimonialsItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 20.h, bottom: 272.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_categories".tr,
                        style: CustomTextStyles.titleMediumOnPrimary18),
                    Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 4.h, bottom: 5.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    ImageConstant.imgFaceSavoringFood17x17),
                                fit: BoxFit.cover))),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text("lbl_see_all".tr,
                            style: CustomTextStyles.titleSmallPrimary))
                  ]),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 101.v,
                  child: Consumer<HomeProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        padding: EdgeInsets.only(right: 6.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16.h);
                        },
                        itemCount:
                            provider.homeModelObj.userprofileItemList.length,
                        itemBuilder: (context, index) {
                          UserprofileItemModel model =
                              provider.homeModelObj.userprofileItemList[index];
                          return UserprofileItemWidget(model);
                        });
                  }))
            ])));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_best_selling".tr,
                        style: CustomTextStyles.titleMediumOnPrimary18),
                    Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 4.h, bottom: 5.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgFire17x17),
                                fit: BoxFit.cover))),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text("lbl_see_all".tr,
                            style: CustomTextStyles.titleSmallPrimary))
                  ]),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 214.v,
                  child: Consumer<HomeProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16.h);
                        },
                        itemCount:
                            provider.homeModelObj.productcardItemList.length,
                        itemBuilder: (context, index) {
                          ProductcardItemModel model =
                              provider.homeModelObj.productcardItemList[index];
                          return ProductcardItemWidget(model);
                        });
                  }))
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
