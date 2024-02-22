import 'knthree_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [gift_card_code_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GiftCardCodeModel {Rx<List<KnthreeItemModel>> knthreeItemList = Rx(List.generate(4,(index) =>KnthreeItemModel()));

 }
