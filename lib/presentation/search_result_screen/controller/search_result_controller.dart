import 'package:jatin_kumar_s_application1/core/app_export.dart';import 'package:jatin_kumar_s_application1/presentation/search_result_screen/models/search_result_model.dart';import 'package:flutter/material.dart';class SearchResultController extends GetxController {TextEditingController formSearchController = TextEditingController();

Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formSearchController.dispose(); } 
 }
