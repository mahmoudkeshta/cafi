import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/gift_card_screen/models/gift_card_model.dart';/// A controller class for the GiftCardScreen.
///
/// This class manages the state of the GiftCardScreen, including the
/// current giftCardModelObj
class GiftCardController extends GetxController {Rx<GiftCardModel> giftCardModelObj = GiftCardModel().obs;

 }
