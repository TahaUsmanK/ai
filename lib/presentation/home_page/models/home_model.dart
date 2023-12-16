import 'package:tahausmank_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'clienttestimonials_item_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'productcard_item_model.dart';

class HomeModel {
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

  List<ClienttestimonialsItemModel> clienttestimonialsItemList =
      List.generate(6, (index) => ClienttestimonialsItemModel());

  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        dynamicProperty2: ImageConstant.imgVector,
        dynamicProperty3: ImageConstant.imgVector6x14,
        dynamicProperty4: ImageConstant.imgVector16x15,
        dynamicProperty5: ImageConstant.imgVector11x10,
        dynamicProperty6: ImageConstant.imgVector11x8,
        dynamicProperty7: ImageConstant.imgVector9x7,
        dynamicProperty8: ImageConstant.imgVector10x5,
        dynamicProperty9: ImageConstant.imgVector8x26,
        dynamicProperty10: ImageConstant.imgVector11x19,
        dynamicProperty11: ImageConstant.imgVector2x10,
        dynamicProperty13: "Fruits"),
    UserprofileItemModel(dynamicProperty13: "vegetables"),
    UserprofileItemModel(dynamicProperty13: "Diary"),
    UserprofileItemModel(dynamicProperty13: "Meat")
  ];

  List<ProductcardItemModel> productcardItemList = [
    ProductcardItemModel(h: "Bell Pepper Red", price: "1kg, 4"),
    ProductcardItemModel(h: "Lamb Meat", price: "1kg, 45")
  ];
}
