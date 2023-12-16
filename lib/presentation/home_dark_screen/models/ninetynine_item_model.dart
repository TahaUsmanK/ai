import '../../../core/app_export.dart';

/// This class is used in the [ninetynine_item_widget] screen.
class NinetynineItemModel {
  NinetynineItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle4377;
    id = id ?? "";
  }

  String? image;

  String? id;
}
