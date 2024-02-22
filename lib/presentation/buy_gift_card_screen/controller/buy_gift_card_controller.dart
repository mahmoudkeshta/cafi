import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/buy_gift_card_screen/models/buy_gift_card_model.dart';/// A controller class for the BuyGiftCardScreen.
///
/// This class manages the state of the BuyGiftCardScreen, including the
/// current buyGiftCardModelObj
class BuyGiftCardController extends GetxController {Rx<BuyGiftCardModel> buyGiftCardModelObj = BuyGiftCardModel().obs;

Rx<String> selectPayment = "".obs;

 }
