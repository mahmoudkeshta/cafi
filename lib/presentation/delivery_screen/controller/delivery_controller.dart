import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/delivery_screen/models/delivery_model.dart';/// A controller class for the DeliveryScreen.
///
/// This class manages the state of the DeliveryScreen, including the
/// current deliveryModelObj
class DeliveryController extends GetxController {Rx<DeliveryModel> deliveryModelObj = DeliveryModel().obs;

 }
