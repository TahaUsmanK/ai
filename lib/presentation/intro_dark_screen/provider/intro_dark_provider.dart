import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/intro_dark_screen/models/intro_dark_model.dart';

/// A provider class for the IntroDarkScreen.
///
/// This provider manages the state of the IntroDarkScreen, including the
/// current introDarkModelObj

// ignore_for_file: must_be_immutable
class IntroDarkProvider extends ChangeNotifier {
  IntroDarkModel introDarkModelObj = IntroDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
