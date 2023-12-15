import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/intro_screen/models/intro_model.dart';

/// A provider class for the IntroScreen.
///
/// This provider manages the state of the IntroScreen, including the
/// current introModelObj

// ignore_for_file: must_be_immutable
class IntroProvider extends ChangeNotifier {
  IntroModel introModelObj = IntroModel();

  @override
  void dispose() {
    super.dispose();
  }
}
