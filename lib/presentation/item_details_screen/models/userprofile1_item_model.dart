import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.lotusIconButton,
    this.oneHundredText,
    this.organicText,
    this.id,
  }) {
    lotusIconButton = lotusIconButton ?? ImageConstant.imgLotus;
    oneHundredText = oneHundredText ?? "100%";
    organicText = organicText ?? "Organic";
    id = id ?? "";
  }

  String? lotusIconButton;

  String? oneHundredText;

  String? organicText;

  String? id;
}
