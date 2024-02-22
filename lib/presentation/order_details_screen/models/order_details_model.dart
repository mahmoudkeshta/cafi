import '../../../core/app_export.dart';import 'userprofile6_item_model.dart';/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel {Rx<List<Userprofile6ItemModel>> userprofile6ItemList = Rx([Userprofile6ItemModel(image:ImageConstant.imgImage20100x100.obs,title: "Mocha Frappe".obs,itemCount: "3 Items".obs,price: "3.50".obs),Userprofile6ItemModel(title: "Ice Green Tea".obs,itemCount: "3 Items".obs,price: "4.50".obs)]);

 }
