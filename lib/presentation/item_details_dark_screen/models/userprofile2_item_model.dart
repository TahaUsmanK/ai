import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.lotus,
    this.oneHundredText,
    this.organicText,
    this.id,
  }) {
    lotus = lotus ?? ImageConstant.imgLotus;
    oneHundredText = oneHundredText ?? "100%";
    organicText = organicText ?? "Organic";
    id = id ?? "";
  }

  String? lotus;

  String? oneHundredText;

  String? organicText;

  String? id;
}
