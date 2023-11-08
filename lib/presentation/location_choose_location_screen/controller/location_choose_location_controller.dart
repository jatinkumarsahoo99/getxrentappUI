import 'package:jatin_kumar_s_application1/core/app_export.dart';import 'package:jatin_kumar_s_application1/presentation/location_choose_location_screen/models/location_choose_location_model.dart';import 'package:flutter/material.dart';class LocationChooseLocationController extends GetxController {TextEditingController frameTwentySevenController = TextEditingController();

Rx<LocationChooseLocationModel> locationChooseLocationModelObj = LocationChooseLocationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); frameTwentySevenController.dispose(); } 
 }
