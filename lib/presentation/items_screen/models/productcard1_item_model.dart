import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {
  Productcard1ItemModel({
    this.image,
    this.title,
    this.subtitle,
    this.id,
  }) {
    image = image ?? ImageConstant.img92f1ea7dcce3b5d;
    title = title ?? "Bell Pepper Red";
    subtitle = subtitle ?? "1kg, 6";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? subtitle;

  String? id;
}
