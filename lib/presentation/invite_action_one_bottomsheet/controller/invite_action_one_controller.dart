import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/invite_action_one_bottomsheet/models/invite_action_one_model.dart';

/// A controller class for the InviteActionOneBottomsheet.
///
/// This class manages the state of the InviteActionOneBottomsheet, including the
/// current inviteActionOneModelObj
class InviteActionOneController extends GetxController {
  Rx<InviteActionOneModel> inviteActionOneModelObj = InviteActionOneModel().obs;
}
