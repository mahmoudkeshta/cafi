import '../controller/search_items_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchItemsScreen.
///
/// This class ensures that the SearchItemsController is created when the
/// SearchItemsScreen is first loaded.
class SearchItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchItemsController());
  }
}
