import '../controller/invite_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InviteOneScreen.
///
/// This class ensures that the InviteOneController is created when the
/// InviteOneScreen is first loaded.
class InviteOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InviteOneController());
  }
}
