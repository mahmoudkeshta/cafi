import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/invite_qr_dialog/models/invite_qr_model.dart';

/// A controller class for the InviteQrDialog.
///
/// This class manages the state of the InviteQrDialog, including the
/// current inviteQrModelObj
class InviteQrController extends GetxController {
  Rx<InviteQrModel> inviteQrModelObj = InviteQrModel().obs;
}
