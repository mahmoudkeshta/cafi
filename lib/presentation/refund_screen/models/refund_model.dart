import 'active_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [refund_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RefundModel {Rx<List<ActiveItemModel>> activeItemList = Rx([ActiveItemModel(groupBy: "Active".obs),ActiveItemModel(groupBy: "History".obs),ActiveItemModel(groupBy: "History".obs),ActiveItemModel(groupBy: "History".obs),ActiveItemModel(groupBy: "History".obs)]);

 }
