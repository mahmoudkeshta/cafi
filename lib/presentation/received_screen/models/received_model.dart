import '../../../core/app_export.dart';import 'userprofile5_item_model.dart';/// This class defines the variables used in the [received_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReceivedModel {Rx<List<Userprofile5ItemModel>> userprofile5ItemList = Rx([Userprofile5ItemModel(image:ImageConstant.imgImage20100x100.obs,title: "Mocha Frappe".obs,itemCount: "3 Items".obs,price: "3.50".obs),Userprofile5ItemModel(title: "Ice Green Tea".obs,itemCount: "3 Items".obs,price: "4.50".obs)]);

 }
