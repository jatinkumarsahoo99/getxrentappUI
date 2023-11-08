import '../top_agents_screen/widgets/datalist1_item_widget.dart';import 'controller/top_agents_controller.dart';import 'models/datalist1_item_model.dart';import 'package:flutter/material.dart';import 'package:jatin_kumar_s_application1/core/app_export.dart';import 'package:jatin_kumar_s_application1/widgets/custom_icon_button.dart';class TopAgentsScreen extends GetWidget<TopAgentsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: SingleChildScrollView(child: Container(padding: getPadding(all: 24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, onTap: () {onTapBtnArrowleft();}, child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(top: 42), child: Text("msg_top_estate_agen".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold25.copyWith(letterSpacing: getHorizontalSize(0.75)))), Padding(padding: getPadding(top: 5), child: Text("msg_find_the_best_r".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanRegular12.copyWith(letterSpacing: getHorizontalSize(0.36)))), Padding(padding: getPadding(top: 36), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(207), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(7), crossAxisSpacing: getHorizontalSize(7)), physics: NeverScrollableScrollPhysics(), itemCount: controller.topAgentsModelObj.value.datalist1ItemList.value.length, itemBuilder: (context, index) {Datalist1ItemModel model = controller.topAgentsModelObj.value.datalist1ItemList.value[index]; return Datalist1ItemWidget(model, onTapColumntext: () {onTapColumntext();});})))]))))])))); } 
onTapColumntext() { Get.toNamed(AppRoutes.topAgentsProfileDetailTabContainerScreen); } 
onTapBtnArrowleft() { Get.back(); } 
 }
