import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/cooking_screen/models/cooking_model.dart';/// A controller class for the CookingScreen.
///
/// This class manages the state of the CookingScreen, including the
/// current cookingModelObj
class CookingController extends GetxController {Rx<CookingModel> cookingModelObj = CookingModel().obs;

 }
