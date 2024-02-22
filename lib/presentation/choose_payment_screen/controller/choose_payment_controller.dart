import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/choose_payment_screen/models/choose_payment_model.dart';/// A controller class for the ChoosePaymentScreen.
///
/// This class manages the state of the ChoosePaymentScreen, including the
/// current choosePaymentModelObj
class ChoosePaymentController extends GetxController {Rx<ChoosePaymentModel> choosePaymentModelObj = ChoosePaymentModel().obs;

Rx<String> selectPayment = "".obs;

 }
