import '../../../core/app_export.dart';import 'reviewselect_item_model.dart';/// This class defines the variables used in the [review_select_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewSelectModel {Rx<List<ReviewselectItemModel>> reviewselectItemList = Rx([ReviewselectItemModel(amakadoHot:ImageConstant.imgImage28120x120.obs,amakadoHot1: "Amakado Hot".obs,itemsCounter: "2 Items".obs,price: "5.50".obs),ReviewselectItemModel(amakadoHot:ImageConstant.imgImage20120x120.obs,amakadoHot1: "Mocha Frappe".obs,itemsCounter: "3 Items".obs,price: "3.50".obs)]);

 }
