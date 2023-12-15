import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.h,
    this.price,
    this.id,
  }) {
    h = h ?? "Bell Pepper Red";
    price = price ?? "1kg, 4";
    id = id ?? "";
  }

  String? h;

  String? price;

  String? id;
}
