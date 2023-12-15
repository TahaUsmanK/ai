import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/items_dark_screen/models/items_dark_model.dart';
import '../models/productcard4_item_model.dart';

/// A provider class for the ItemsDarkScreen.
///
/// This provider manages the state of the ItemsDarkScreen, including the
/// current itemsDarkModelObj

// ignore_for_file: must_be_immutable
class ItemsDarkProvider extends ChangeNotifier {
  ItemsDarkModel itemsDarkModelObj = ItemsDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
