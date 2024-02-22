import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/gift_card_code_screen/models/gift_card_code_model.dart';/// A controller class for the GiftCardCodeScreen.
///
/// This class manages the state of the GiftCardCodeScreen, including the
/// current giftCardCodeModelObj
class GiftCardCodeController extends GetxController {Rx<GiftCardCodeModel> giftCardCodeModelObj = GiftCardCodeModel().obs;

 }
