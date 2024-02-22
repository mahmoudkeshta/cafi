import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/link_popup_two_dialog/models/link_popup_two_model.dart';

/// A controller class for the LinkPopupTwoDialog.
///
/// This class manages the state of the LinkPopupTwoDialog, including the
/// current linkPopupTwoModelObj
class LinkPopupTwoController extends GetxController {
  Rx<LinkPopupTwoModel> linkPopupTwoModelObj = LinkPopupTwoModel().obs;
}
