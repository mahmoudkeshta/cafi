import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/order_success_two_screen/models/order_success_two_model.dart';

/// A controller class for the OrderSuccessTwoScreen.
///
/// This class manages the state of the OrderSuccessTwoScreen, including the
/// current orderSuccessTwoModelObj
class OrderSuccessTwoController extends GetxController {
  Rx<OrderSuccessTwoModel> orderSuccessTwoModelObj = OrderSuccessTwoModel().obs;
}
