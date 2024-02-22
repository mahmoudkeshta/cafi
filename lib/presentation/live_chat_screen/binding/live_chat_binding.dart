import '../controller/live_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LiveChatScreen.
///
/// This class ensures that the LiveChatController is created when the
/// LiveChatScreen is first loaded.
class LiveChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveChatController());
  }
}
