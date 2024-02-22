import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/live_chat_screen/models/live_chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the LiveChatScreen.
///
/// This class manages the state of the LiveChatScreen, including the
/// current liveChatModelObj
class LiveChatController extends GetxController {TextEditingController fortyOneController = TextEditingController();

TextEditingController messageController = TextEditingController();

Rx<LiveChatModel> liveChatModelObj = LiveChatModel().obs;

@override void onClose() { super.onClose(); fortyOneController.dispose(); messageController.dispose(); } 
 }
