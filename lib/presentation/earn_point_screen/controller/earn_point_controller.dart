import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/earn_point_screen/models/earn_point_model.dart';/// A controller class for the EarnPointScreen.
///
/// This class manages the state of the EarnPointScreen, including the
/// current earnPointModelObj
class EarnPointController extends GetxController {Rx<EarnPointModel> earnPointModelObj = EarnPointModel().obs;

 }
