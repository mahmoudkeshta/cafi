import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/reward_history_screen/models/reward_history_model.dart';/// A controller class for the RewardHistoryScreen.
///
/// This class manages the state of the RewardHistoryScreen, including the
/// current rewardHistoryModelObj
class RewardHistoryController extends GetxController {Rx<RewardHistoryModel> rewardHistoryModelObj = RewardHistoryModel().obs;

 }
