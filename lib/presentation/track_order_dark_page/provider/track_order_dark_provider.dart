import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/track_order_dark_page/models/track_order_dark_model.dart';

/// A provider class for the TrackOrderDarkPage.
///
/// This provider manages the state of the TrackOrderDarkPage, including the
/// current trackOrderDarkModelObj
class TrackOrderDarkProvider extends ChangeNotifier {
  TrackOrderDarkModel trackOrderDarkModelObj = TrackOrderDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
