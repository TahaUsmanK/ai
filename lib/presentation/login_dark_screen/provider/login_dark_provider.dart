import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';
import 'package:tahausmank_s_application1/presentation/login_dark_screen/models/login_dark_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the LoginDarkScreen.
///
/// This provider manages the state of the LoginDarkScreen, including the
/// current loginDarkModelObj

// ignore_for_file: must_be_immutable
class LoginDarkProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  LoginDarkModel loginDarkModelObj = LoginDarkModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
