import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/balance_screen/models/balance_model.dart';/// A controller class for the BalanceScreen.
///
/// This class manages the state of the BalanceScreen, including the
/// current balanceModelObj
class BalanceController extends GetxController {Rx<BalanceModel> balanceModelObj = BalanceModel().obs;

 }
