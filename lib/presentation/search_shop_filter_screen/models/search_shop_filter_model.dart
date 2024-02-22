import '../../../core/app_export.dart';import 'searchshopfilter_item_model.dart';/// This class defines the variables used in the [search_shop_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchShopFilterModel {Rx<List<SearchshopfilterItemModel>> searchshopfilterItemList = Rx([SearchshopfilterItemModel(image:ImageConstant.imgRectangle192.obs,circleImage:ImageConstant.imgImage1685x85.obs,starbucks: "Starbucks".obs,ratingCounter: "8.1 Rating".obs,k: "10K".obs),SearchshopfilterItemModel(image:ImageConstant.imgRectangle125.obs,circleImage:ImageConstant.imgEllipse202.obs,starbucks: "Luna".obs,ratingCounter: "8.1 Rating".obs,k: "10K".obs)]);

 }
