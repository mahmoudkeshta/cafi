import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/active_chat_screen/models/active_chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the ActiveChatScreen.
///
/// This class manages the state of the ActiveChatScreen, including the
/// current activeChatModelObj
class ActiveChatController extends GetxController {TextEditingController group181Controller = TextEditingController();

TextEditingController messageController = TextEditingController();

Rx<ActiveChatModel> activeChatModelObj = ActiveChatModel().obs;

@override void onClose() { super.onClose(); group181Controller.dispose(); messageController.dispose(); } 
 }
