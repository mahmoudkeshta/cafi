import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/link_popup_dialog/models/link_popup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LinkPopupDialog.
///
/// This class manages the state of the LinkPopupDialog, including the
/// current linkPopupModelObj
class LinkPopupController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<LinkPopupModel> linkPopupModelObj = LinkPopupModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
    dateController.dispose();
    editTextController.dispose();
  }
}
