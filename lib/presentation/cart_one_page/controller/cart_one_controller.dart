import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_one_page/models/cart_one_model.dart';

/// A controller class for the CartOnePage.
///
/// This class manages the state of the CartOnePage, including the
/// current cartOneModelObj
class CartOneController extends GetxController {
  CartOneController(this.cartOneModelObj);

  Rx<CartOneModel> cartOneModelObj;
}
