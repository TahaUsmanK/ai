import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/track_order_page/models/track_order_model.dart';

/// A provider class for the TrackOrderPage.
///
/// This provider manages the state of the TrackOrderPage, including the
/// current trackOrderModelObj
class TrackOrderProvider extends ChangeNotifier {
  TrackOrderModel trackOrderModelObj = TrackOrderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
