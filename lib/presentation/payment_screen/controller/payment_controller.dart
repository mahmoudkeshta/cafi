import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/payment_screen/models/payment_model.dart';/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

Rx<String> selectPayment = "".obs;

 }
