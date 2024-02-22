import '../controller/search_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchFilterScreen.
///
/// This class ensures that the SearchFilterController is created when the
/// SearchFilterScreen is first loaded.
class SearchFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchFilterController());
  }
}
