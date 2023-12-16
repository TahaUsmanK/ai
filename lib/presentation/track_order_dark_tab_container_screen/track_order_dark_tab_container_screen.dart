import 'models/track_order_dark_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/track_order_dark_page/track_order_dark_page.dart';
import 'package:tahausmank_s_application1/presentation/track_order_page/track_order_page.dart';
import 'package:tahausmank_s_application1/widgets/custom_outlined_button.dart';
import 'provider/track_order_dark_tab_container_provider.dart';

class TrackOrderDarkTabContainerScreen extends StatefulWidget {
  const TrackOrderDarkTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrackOrderDarkTabContainerScreenState createState() =>
      TrackOrderDarkTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TrackOrderDarkTabContainerProvider(),
      child: TrackOrderDarkTabContainerScreen(),
    );
  }
}

class TrackOrderDarkTabContainerScreenState
    extends State<TrackOrderDarkTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              SizedBox(
                width: 63.h,
                child: Divider(
                  color: appTheme.blueGray700,
                ),
              ),
              SizedBox(height: 25.v),
              _buildOnTheWayRow(context),
              SizedBox(height: 15.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnTheWayRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_on_the_way".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomOutlinedButton(
            width: 94.h,
            text: "lbl_10_min".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgClockPrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 334.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray500,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: theme.colorScheme.errorContainer,
        tabs: [
          Tab(
            child: Text(
              "lbl_order_placed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_on_the_way".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_delivered".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 260.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          TrackOrderDarkPage(),
          TrackOrderPage(),
          TrackOrderPage(),
        ],
      ),
    );
  }
}
