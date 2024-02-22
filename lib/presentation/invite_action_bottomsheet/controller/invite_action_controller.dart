import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/invite_action_bottomsheet/models/invite_action_model.dart';

/// A controller class for the InviteActionBottomsheet.
///
/// This class manages the state of the InviteActionBottomsheet, including the
/// current inviteActionModelObj
class InviteActionController extends GetxController {
  Rx<InviteActionModel> inviteActionModelObj = InviteActionModel().obs;
}
