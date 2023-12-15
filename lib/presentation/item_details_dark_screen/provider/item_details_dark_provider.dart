import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/item_details_dark_screen/models/item_details_dark_model.dart';
import '../models/userprofile2_item_model.dart';

/// A provider class for the ItemDetailsDarkScreen.
///
/// This provider manages the state of the ItemDetailsDarkScreen, including the
/// current itemDetailsDarkModelObj

// ignore_for_file: must_be_immutable
class ItemDetailsDarkProvider extends ChangeNotifier {
  ItemDetailsDarkModel itemDetailsDarkModelObj = ItemDetailsDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
