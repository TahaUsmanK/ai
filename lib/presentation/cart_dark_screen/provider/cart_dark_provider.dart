import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/cart_dark_screen/models/cart_dark_model.dart';
import '../models/productcard5_item_model.dart';

/// A provider class for the CartDarkScreen.
///
/// This provider manages the state of the CartDarkScreen, including the
/// current cartDarkModelObj

// ignore_for_file: must_be_immutable
class CartDarkProvider extends ChangeNotifier {
  CartDarkModel cartDarkModelObj = CartDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
