import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

class ItemDetailsModel {
  List<Userprofile1ItemModel> userprofile1ItemList = [
    Userprofile1ItemModel(
        lotusIconButton: ImageConstant.imgLotus,
        oneHundredText: "100%",
        organicText: "Organic"),
    Userprofile1ItemModel(
        lotusIconButton: ImageConstant.imgCalendarOnerrorcontainer,
        oneHundredText: "1 Year",
        organicText: "Expiration"),
    Userprofile1ItemModel(
        lotusIconButton: ImageConstant.imgFavourites, organicText: "Reviews"),
    Userprofile1ItemModel(oneHundredText: "80 kcal", organicText: "100 Gram ")
  ];
}
