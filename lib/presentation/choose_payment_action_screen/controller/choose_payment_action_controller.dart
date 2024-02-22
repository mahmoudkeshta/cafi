import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/choose_payment_action_screen/models/choose_payment_action_model.dart';/// A controller class for the ChoosePaymentActionScreen.
///
/// This class manages the state of the ChoosePaymentActionScreen, including the
/// current choosePaymentActionModelObj
class ChoosePaymentActionController extends GetxController {Rx<ChoosePaymentActionModel> choosePaymentActionModelObj = ChoosePaymentActionModel().obs;

Rx<String> selectPayment = "".obs;

 }
