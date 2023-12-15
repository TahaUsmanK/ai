import 'models/track_order_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'provider/track_order_provider.dart';

// ignore_for_file: must_be_immutable
class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrackOrderPageState createState() => TrackOrderPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TrackOrderProvider(),
      child: TrackOrderPage(),
    );
  }
}

class TrackOrderPageState extends State<TrackOrderPage>
    with AutomaticKeepAliveClientMixin<TrackOrderPage> {
  @override
  bool get wantKeepAlive => true;
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(top: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_your_delivery_hero".tr,
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "msg_abdulmalik_qasim".tr,
                                style: CustomTextStyles.titleMediumOnPrimary,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame36787,
                          height: 44.v,
                          width: 104.h,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.v),
                    SizedBox(
                      height: 137.v,
                      width: 342.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 37.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_your_place".tr,
                                    style: CustomTextStyles.titleSmallGray500,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "msg_queens_road_london".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              height: 129.v,
                              width: 342.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: SizedBox(
                                        height: 101.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                          endIndent: 17.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLinkedin,
                                    height: 23.v,
                                    width: 20.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(left: 1.h),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      margin: EdgeInsets.only(top: 9.v),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          11.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.redA400,
                                          width: 3.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 59.v),
                                      child: SizedBox(
                                        width: 331.h,
                                        child: Divider(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 37.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_store".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray500,
                                          ),
                                          SizedBox(height: 5.v),
                                          Text(
                                            "msg_insta_grocery_store".tr,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
