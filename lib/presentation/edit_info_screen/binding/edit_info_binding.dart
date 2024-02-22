import '../controller/edit_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditInfoScreen.
///
/// This class ensures that the EditInfoController is created when the
/// EditInfoScreen is first loaded.
class EditInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditInfoController());
  }
}
