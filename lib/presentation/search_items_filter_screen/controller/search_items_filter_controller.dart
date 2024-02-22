import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_items_filter_screen/models/search_items_filter_model.dart';/// A controller class for the SearchItemsFilterScreen.
///
/// This class manages the state of the SearchItemsFilterScreen, including the
/// current searchItemsFilterModelObj
class SearchItemsFilterController extends GetxController {Rx<SearchItemsFilterModel> searchItemsFilterModelObj = SearchItemsFilterModel().obs;

 }
