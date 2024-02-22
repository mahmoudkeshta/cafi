import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/ballance_added_dialog/models/ballance_added_model.dart';

/// A controller class for the BallanceAddedDialog.
///
/// This class manages the state of the BallanceAddedDialog, including the
/// current ballanceAddedModelObj
class BallanceAddedController extends GetxController {
  Rx<BallanceAddedModel> ballanceAddedModelObj = BallanceAddedModel().obs;
}
