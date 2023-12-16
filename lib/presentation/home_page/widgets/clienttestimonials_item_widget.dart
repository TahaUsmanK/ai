import '../models/clienttestimonials_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ClienttestimonialsItemWidget extends StatelessWidget {
  ClienttestimonialsItemWidget(
    this.clienttestimonialsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClienttestimonialsItemModel clienttestimonialsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 158.v,
        width: 342.h,
        margin: EdgeInsets.only(
          top: 298.v,
          right: 373.h,
          bottom: 298.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.h,
          ),
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgRectangle4377158x342,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
