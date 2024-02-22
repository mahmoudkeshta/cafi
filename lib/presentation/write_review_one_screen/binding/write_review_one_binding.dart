import '../controller/write_review_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WriteReviewOneScreen.
///
/// This class ensures that the WriteReviewOneController is created when the
/// WriteReviewOneScreen is first loaded.
class WriteReviewOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteReviewOneController());
  }
}
