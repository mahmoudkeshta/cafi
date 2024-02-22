import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/cooking_one_screen/models/cooking_one_model.dart';/// A controller class for the CookingOneScreen.
///
/// This class manages the state of the CookingOneScreen, including the
/// current cookingOneModelObj
class CookingOneController extends GetxController {Rx<CookingOneModel> cookingOneModelObj = CookingOneModel().obs;

 }
