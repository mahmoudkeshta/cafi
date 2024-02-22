import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/gift_card_code_share_bottomsheet/models/gift_card_code_share_model.dart';

/// A controller class for the GiftCardCodeShareBottomsheet.
///
/// This class manages the state of the GiftCardCodeShareBottomsheet, including the
/// current giftCardCodeShareModelObj
class GiftCardCodeShareController extends GetxController {
  Rx<GiftCardCodeShareModel> giftCardCodeShareModelObj =
      GiftCardCodeShareModel().obs;
}
