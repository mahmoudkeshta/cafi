import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/invite_screen/models/invite_model.dart';/// A controller class for the InviteScreen.
///
/// This class manages the state of the InviteScreen, including the
/// current inviteModelObj
class InviteController extends GetxController {Rx<InviteModel> inviteModelObj = InviteModel().obs;

 }
