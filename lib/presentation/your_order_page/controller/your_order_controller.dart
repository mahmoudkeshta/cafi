import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/your_order_page/models/your_order_model.dart';/// A controller class for the YourOrderPage.
///
/// This class manages the state of the YourOrderPage, including the
/// current yourOrderModelObj
class YourOrderController extends GetxController {YourOrderController(this.yourOrderModelObj);

Rx<YourOrderModel> yourOrderModelObj;

 }
