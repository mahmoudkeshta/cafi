import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/buy_gift_card_action_screen/models/buy_gift_card_action_model.dart';/// A controller class for the BuyGiftCardActionScreen.
///
/// This class manages the state of the BuyGiftCardActionScreen, including the
/// current buyGiftCardActionModelObj
class BuyGiftCardActionController extends GetxController {Rx<BuyGiftCardActionModel> buyGiftCardActionModelObj = BuyGiftCardActionModel().obs;

Rx<String> selectPayment = "".obs;

 }
