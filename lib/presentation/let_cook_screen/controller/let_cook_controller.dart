import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/let_cook_screen/models/let_cook_model.dart';

/// A controller class for the LetCookScreen.
///
/// This class manages the state of the LetCookScreen, including the
/// current letCookModelObj
class LetCookController extends GetxController {
  Rx<LetCookModel> letCookModelObj = LetCookModel().obs;
}
