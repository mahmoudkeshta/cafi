import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/review_screen/models/review_model.dart';/// A controller class for the ReviewScreen.
///
/// This class manages the state of the ReviewScreen, including the
/// current reviewModelObj
class ReviewController extends GetxController {Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

 }
