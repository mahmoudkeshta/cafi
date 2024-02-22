import '../controller/write_review_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WriteReviewScreen.
///
/// This class ensures that the WriteReviewController is created when the
/// WriteReviewScreen is first loaded.
class WriteReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteReviewController());
  }
}
