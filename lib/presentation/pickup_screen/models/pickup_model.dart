import '../../../core/app_export.dart';import 'pickup_item_model.dart';/// This class defines the variables used in the [pickup_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PickupModel {Rx<List<PickupItemModel>> pickupItemList = Rx([PickupItemModel(mochaFrappe:ImageConstant.imgImage20100x100.obs,mochaFrappe1: "Mocha Frappe".obs,itemsCounter: "3 Items".obs,price: "3.50".obs),PickupItemModel(mochaFrappe1: "Ice Green Tea".obs,itemsCounter: "3 Items".obs,price: "4.50".obs)]);

 }
