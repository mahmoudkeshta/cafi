import '../controller/active_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActiveChatScreen.
///
/// This class ensures that the ActiveChatController is created when the
/// ActiveChatScreen is first loaded.
class ActiveChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActiveChatController());
  }
}
