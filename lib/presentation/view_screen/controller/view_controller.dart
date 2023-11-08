import 'package:jatin_kumar_s_application1/core/app_export.dart';import 'package:jatin_kumar_s_application1/presentation/view_screen/models/view_model.dart';class ViewController extends GetxController {Rx<ViewModel> viewModelObj = ViewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
