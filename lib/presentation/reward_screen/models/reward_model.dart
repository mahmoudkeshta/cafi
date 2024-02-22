import '../../../core/app_export.dart';import 'reward_item_model.dart';/// This class defines the variables used in the [reward_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RewardModel {Rx<List<RewardItemModel>> rewardItemList = Rx([RewardItemModel(referFirstFriend:ImageConstant.imgImage44.obs,referFirstFriend1: "Refer First Friend!".obs,inviteYourFirst: "Invite your first friend to register".obs,widget: "+50".obs),RewardItemModel(referFirstFriend:ImageConstant.imgImage45.obs,referFirstFriend1: "Add 50 To App Balance".obs,inviteYourFirst: "Put money in first time".obs,widget: "+500".obs),RewardItemModel(referFirstFriend:ImageConstant.imgImage46.obs,referFirstFriend1: "First Spend 25".obs,inviteYourFirst: "Make the first 25 history with app".obs,widget: "+250".obs)]);

 }
