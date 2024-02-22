import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/claim_screen/models/claim_model.dart';

/// A controller class for the ClaimScreen.
///
/// This class manages the state of the ClaimScreen, including the
/// current claimModelObj
class ClaimController extends GetxController {
  Rx<ClaimModel> claimModelObj = ClaimModel().obs;
}
