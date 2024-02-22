import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/checkout_one_page/models/checkout_one_model.dart';

/// A controller class for the CheckoutOnePage.
///
/// This class manages the state of the CheckoutOnePage, including the
/// current checkoutOneModelObj
class CheckoutOneController extends GetxController {
  CheckoutOneController(this.checkoutOneModelObj);

  Rx<CheckoutOneModel> checkoutOneModelObj;
}
