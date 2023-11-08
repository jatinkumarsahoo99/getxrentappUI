import 'package:jatin_kumar_s_application1/core/app_export.dart';import 'package:jatin_kumar_s_application1/presentation/form_detail_screen/models/form_detail_model.dart';import 'package:flutter/material.dart';class FormDetailController extends GetxController {TextEditingController formPasswordController = TextEditingController();

Rx<FormDetailModel> formDetailModelObj = FormDetailModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formPasswordController.dispose(); } 
 }
