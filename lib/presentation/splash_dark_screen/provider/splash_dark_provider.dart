import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/splash_dark_screen/models/splash_dark_model.dart';

/// A provider class for the SplashDarkScreen.
///
/// This provider manages the state of the SplashDarkScreen, including the
/// current splashDarkModelObj

// ignore_for_file: must_be_immutable
class SplashDarkProvider extends ChangeNotifier {
  SplashDarkModel splashDarkModelObj = SplashDarkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
