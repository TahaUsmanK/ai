import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/home_dark_screen/models/home_dark_model.dart';
import '../models/ninetynine_item_model.dart';
import '../models/fruitscomponent_item_model.dart';
import '../models/productcard3_item_model.dart';

/// A provider class for the HomeDarkScreen.
///
/// This provider manages the state of the HomeDarkScreen, including the
/// current homeDarkModelObj

// ignore_for_file: must_be_immutable
class HomeDarkProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeDarkModel homeDarkModelObj = HomeDarkModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeDarkModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
