import '../../../core/app_export.dart';

/// This class is used in the [productcard3_item_widget] screen.
class Productcard3ItemModel {
  Productcard3ItemModel({
    this.image,
    this.title,
    this.description,
    this.id,
  }) {
    image = image ?? ImageConstant.img92f1ea7dcce3b5d;
    title = title ?? "Bell Pepper Red";
    description = description ?? "1kg, 4";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? description;

  String? id;
}
