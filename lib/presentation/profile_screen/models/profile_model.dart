import '../../../core/app_export.dart';
import '../controller/profile_controller.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel  {
  Rx<List<ProfileItemModel>> profileItemList = Rx([
    ProfileItemModel(
        balance: ImageConstant.imgRectangle100.obs, balance1: "Balance".obs),
    ProfileItemModel(
        balance: ImageConstant.imgRectangle101.obs, balance1: "Reward".obs),
    ProfileItemModel(
        balance: ImageConstant.imgRectangle102.obs, balance1: "Invite".obs),
    ProfileItemModel(
        balance: ImageConstant.imgRectangle103.obs, balance1: "Gift Card".obs),

  ]);
}
