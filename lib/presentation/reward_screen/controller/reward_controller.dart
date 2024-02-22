import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/reward_screen/models/reward_model.dart';/// A controller class for the RewardScreen.
///
/// This class manages the state of the RewardScreen, including the
/// current rewardModelObj
class RewardController extends GetxController {Rx<RewardModel> rewardModelObj = RewardModel().obs;

 }
