import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/link_popup_three_dialog/models/link_popup_three_model.dart';

/// A controller class for the LinkPopupThreeDialog.
///
/// This class manages the state of the LinkPopupThreeDialog, including the
/// current linkPopupThreeModelObj
class LinkPopupThreeController extends GetxController {
  Rx<LinkPopupThreeModel> linkPopupThreeModelObj = LinkPopupThreeModel().obs;
}
