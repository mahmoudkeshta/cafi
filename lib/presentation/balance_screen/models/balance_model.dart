import 'yesterday_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [balance_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BalanceModel {Rx<List<YesterdayItemModel>> yesterdayItemList = Rx([YesterdayItemModel(groupBy: "Yesterday".obs),YesterdayItemModel(groupBy: "Yesterday".obs),YesterdayItemModel(groupBy: "02.Aug.2022".obs)]);

 }
