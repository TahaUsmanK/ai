import '../../../core/app_export.dart';

/// This class is used in the [productcard5_item_widget] screen.
class Productcard5ItemModel {
  Productcard5ItemModel({
    this.productImage,
    this.productTitle,
    this.productDescription,
    this.quantity,
    this.id,
  }) {
    productImage = productImage ?? ImageConstant.img92f1ea7dcce3b5d;
    productTitle = productTitle ?? "Bell Pepper Red";
    productDescription = productDescription ?? "1kg, 6";
    quantity = quantity ?? "2";
    id = id ?? "";
  }

  String? productImage;

  String? productTitle;

  String? productDescription;

  String? quantity;

  String? id;
}
