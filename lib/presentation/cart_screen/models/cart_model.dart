import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([Userprofile4ItemModel(image:ImageConstant.imgImage2080x77.obs,title: "Mocha Frappe".obs,price: "3.50".obs,quantity: "1".obs)]);

 }
