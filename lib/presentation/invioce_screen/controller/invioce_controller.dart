import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/invioce_screen/models/invioce_model.dart';

/// A controller class for the InvioceScreen.
///
/// This class manages the state of the InvioceScreen, including the
/// current invioceModelObj
class InvioceController extends GetxController {
  Rx<InvioceModel> invioceModelObj = InvioceModel().obs;
}
