import '../controller/review_empty_controller.dart';
import '../models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jatin_kumar_s_application1/core/app_export.dart';
import 'package:jatin_kumar_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(this.cardlistItemModelObj);

  CardlistItemModel cardlistItemModelObj;

  var controller = Get.find<ReviewEmptyController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 10,
          ),
          padding: getPadding(
            left: 16,
            top: 15,
            right: 16,
            bottom: 15,
          ),
          decoration: AppDecoration.fillOrange300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 25,
                width: 25,
                variant: IconButtonVariant.FillWhiteA700e5,
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmark,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 37,
                ),
                child: Obx(
                  () => Text(
                    cardlistItemModelObj.accountnumberTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold18.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.54,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_balance".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold8.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "lbl_31_250".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold12WhiteA700
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVolume,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        left: 56,
                        top: 9,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
