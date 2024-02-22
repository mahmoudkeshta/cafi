import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/link_popup_one_dialog/models/link_popup_one_model.dart';

/// A controller class for the LinkPopupOneDialog.
///
/// This class manages the state of the LinkPopupOneDialog, including the
/// current linkPopupOneModelObj
class LinkPopupOneController extends GetxController {
  Rx<LinkPopupOneModel> linkPopupOneModelObj = LinkPopupOneModel().obs;
}
