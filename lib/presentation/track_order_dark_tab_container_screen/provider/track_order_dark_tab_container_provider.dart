import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/track_order_dark_tab_container_screen/models/track_order_dark_tab_container_model.dart';

/// A provider class for the TrackOrderDarkTabContainerScreen.
///
/// This provider manages the state of the TrackOrderDarkTabContainerScreen, including the
/// current trackOrderDarkTabContainerModelObj
class TrackOrderDarkTabContainerProvider extends ChangeNotifier {
  TrackOrderDarkTabContainerModel trackOrderDarkTabContainerModelObj =
      TrackOrderDarkTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
