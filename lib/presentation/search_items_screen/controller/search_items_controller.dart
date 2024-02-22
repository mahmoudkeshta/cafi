import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/search_items_screen/models/search_items_model.dart';/// A controller class for the SearchItemsScreen.
///
/// This class manages the state of the SearchItemsScreen, including the
/// current searchItemsModelObj
class SearchItemsController extends GetxController {Rx<SearchItemsModel> searchItemsModelObj = SearchItemsModel().obs;

 }
