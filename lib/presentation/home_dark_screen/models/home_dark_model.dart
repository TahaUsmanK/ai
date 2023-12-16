import 'package:tahausmank_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'ninetynine_item_model.dart';
import 'fruitscomponent_item_model.dart';
import 'productcard3_item_model.dart';

class HomeDarkModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<NinetynineItemModel> ninetynineItemList = [
    NinetynineItemModel(image: ImageConstant.imgRectangle4377),
    NinetynineItemModel(image: ImageConstant.imgRectangle4377)
  ];

  List<FruitscomponentItemModel> fruitscomponentItemList = [
    FruitscomponentItemModel(
        fruitImage: ImageConstant.imgApple, fruitText: "Fruits"),
    FruitscomponentItemModel(
        fruitImage: ImageConstant.imgBroccoli, fruitText: "vegetables"),
    FruitscomponentItemModel(
        fruitImage: ImageConstant.imgCheese, fruitText: "Diary"),
    FruitscomponentItemModel(
        fruitImage: ImageConstant.imgMeat, fruitText: "Meat")
  ];

  List<Productcard3ItemModel> productcard3ItemList = [
    Productcard3ItemModel(
        image: ImageConstant.img92f1ea7dcce3b5d,
        title: "Bell Pepper Red",
        description: "1kg, 4"),
    Productcard3ItemModel(
        image: ImageConstant.imgFavpngRawMeat,
        title: "Lamb Meat",
        description: "1kg, 45")
  ];
}
