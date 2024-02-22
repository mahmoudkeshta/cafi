import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/search_shop_action_filter_page/models/search_shop_action_filter_model.dart';

/// A controller class for the SearchShopActionFilterPage.
///
/// This class manages the state of the SearchShopActionFilterPage, including the
/// current searchShopActionFilterModelObj
class SearchShopActionFilterController extends GetxController {
  SearchShopActionFilterController(this.searchShopActionFilterModelObj);

  Rx<SearchShopActionFilterModel> searchShopActionFilterModelObj;
}
