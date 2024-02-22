import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/product_action_screen/models/product_action_model.dart';/// A controller class for the ProductActionScreen.
///
/// This class manages the state of the ProductActionScreen, including the
/// current productActionModelObj
class ProductActionController extends GetxController {Rx<ProductActionModel> productActionModelObj = ProductActionModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> sugar = "".obs;

 }
