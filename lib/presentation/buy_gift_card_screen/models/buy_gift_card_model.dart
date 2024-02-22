import 'widget6_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [buy_gift_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BuyGiftCardModel {Rx<List<Widget6ItemModel>> widget6ItemList = Rx(List.generate(5,(index) =>Widget6ItemModel()));

Rx<List<String>> radioList = Rx(["lbl_aba_bank","lbl_wing_bank","lbl_acleda_bank"]);

 }
