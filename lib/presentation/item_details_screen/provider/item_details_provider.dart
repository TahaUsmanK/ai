import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/item_details_screen/models/item_details_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the ItemDetailsScreen.
///
/// This provider manages the state of the ItemDetailsScreen, including the
/// current itemDetailsModelObj

// ignore_for_file: must_be_immutable
class ItemDetailsProvider extends ChangeNotifier {
  ItemDetailsModel itemDetailsModelObj = ItemDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
