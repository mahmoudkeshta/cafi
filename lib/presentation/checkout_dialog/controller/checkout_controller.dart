import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/checkout_dialog/models/checkout_model.dart';

/// A controller class for the CheckoutDialog.
///
/// This class manages the state of the CheckoutDialog, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  Rx<String> select = "".obs;
}
