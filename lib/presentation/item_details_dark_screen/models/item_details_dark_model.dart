import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

class ItemDetailsDarkModel {
  List<Userprofile2ItemModel> userprofile2ItemList = [
    Userprofile2ItemModel(
        lotus: ImageConstant.imgLotus,
        oneHundredText: "100%",
        organicText: "Organic"),
    Userprofile2ItemModel(
        lotus: ImageConstant.imgCalendarOnerrorcontainer,
        oneHundredText: "1 Year",
        organicText: "Expiration"),
    Userprofile2ItemModel(
        lotus: ImageConstant.imgFavourites, organicText: "Reviews"),
    Userprofile2ItemModel(oneHundredText: "80 kcal", organicText: "100 Gram ")
  ];
}
