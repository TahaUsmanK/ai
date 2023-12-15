import '../../../core/app_export.dart';

/// This class is used in the [fruitscomponent_item_widget] screen.
class FruitscomponentItemModel {
  FruitscomponentItemModel({
    this.fruitImage,
    this.fruitText,
    this.id,
  }) {
    fruitImage = fruitImage ?? ImageConstant.imgApple;
    fruitText = fruitText ?? "Fruits";
    id = id ?? "";
  }

  String? fruitImage;

  String? fruitText;

  String? id;
}
