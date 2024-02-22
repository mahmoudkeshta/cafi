import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/order_success_one_screen/models/order_success_one_model.dart';

/// A controller class for the OrderSuccessOneScreen.
///
/// This class manages the state of the OrderSuccessOneScreen, including the
/// current orderSuccessOneModelObj
class OrderSuccessOneController extends GetxController {
  Rx<OrderSuccessOneModel> orderSuccessOneModelObj = OrderSuccessOneModel().obs;
}
