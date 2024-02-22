import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/review_select_screen/models/review_select_model.dart';/// A controller class for the ReviewSelectScreen.
///
/// This class manages the state of the ReviewSelectScreen, including the
/// current reviewSelectModelObj
class ReviewSelectController extends GetxController {Rx<ReviewSelectModel> reviewSelectModelObj = ReviewSelectModel().obs;

 }
