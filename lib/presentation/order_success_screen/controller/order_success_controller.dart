import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order_success_model.dart';

/// A controller class for the OrderSuccessScreen.
///
/// This class manages the state of the OrderSuccessScreen, including the
/// current orderSuccessModelObj
class OrderSuccessController extends GetxController {
  Rx<OrderSuccessModel> orderSuccessModelObj = OrderSuccessModel().obs;
}
