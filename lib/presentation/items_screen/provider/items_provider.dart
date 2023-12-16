import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/items_screen/models/items_model.dart';
import '../models/productcard1_item_model.dart';

/// A provider class for the ItemsScreen.
///
/// This provider manages the state of the ItemsScreen, including the
/// current itemsModelObj

// ignore_for_file: must_be_immutable
class ItemsProvider extends ChangeNotifier {
  ItemsModel itemsModelObj = ItemsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
