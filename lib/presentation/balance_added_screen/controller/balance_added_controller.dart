import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/balance_added_screen/models/balance_added_model.dart';

/// A controller class for the BalanceAddedScreen.
///
/// This class manages the state of the BalanceAddedScreen, including the
/// current balanceAddedModelObj
class BalanceAddedController extends GetxController {
  Rx<BalanceAddedModel> balanceAddedModelObj = BalanceAddedModel().obs;
}
