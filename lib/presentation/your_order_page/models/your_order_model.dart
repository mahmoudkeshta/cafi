import 'pendingorders_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [your_order_page],
/// and is typically used to hold data that is passed between different parts of the application.
class YourOrderModel {Rx<List<PendingordersItemModel>> pendingordersItemList = Rx([PendingordersItemModel(groupBy: "Pending Orders".obs),PendingordersItemModel(groupBy: "Pending Orders".obs),PendingordersItemModel(groupBy: "Past Orders".obs),PendingordersItemModel(groupBy: "Past Orders".obs)]);

 }
