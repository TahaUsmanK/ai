import '../../../core/app_export.dart';

/// This class is used in the [productcard2_item_widget] screen.
class Productcard2ItemModel {
  Productcard2ItemModel({
    this.productImage,
    this.title,
    this.description,
    this.quantity,
    this.id,
  }) {
    productImage = productImage ?? ImageConstant.img92f1ea7dcce3b5d;
    title = title ?? "Bell Pepper Red";
    description = description ?? "1kg, 6";
    quantity = quantity ?? "2";
    id = id ?? "";
  }

  String? productImage;

  String? title;

  String? description;

  String? quantity;

  String? id;
}
