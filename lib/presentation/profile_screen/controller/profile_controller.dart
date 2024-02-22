import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/profile_screen/models/profile_model.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;
  
}
abstract class Profile_Controller extends GetxController{

goToNotification();
goToBalance();
goToReward();
goToInvite();
goToGiftCard();
goToMyInformation();
goToAddress();
goToPayment();
goToMyWistlist();
goToCafeFollowing();
goToRefund();
goToAboutCompany();
goToAboutSignOut();
goToAboutPassword();






}
class Profile_ControllerIgm extends Profile_Controller{
  @override
  goToAddress() {
    // TODO: implement goToAddress
  Get.toNamed(AppRoutes.addressScreen);
  }
  
  @override
  goToAboutCompany() {
    // TODO: implement goToAboutCompany
    Get.toNamed(AppRoutes.aboutScreen);
  }
  
  @override
  goToAboutSignOut() {
    // TODO: implement goToAboutSignOut
    Get.toNamed(AppRoutes.signInScreen);

  }
  
  @override
  goToBalance() {
    // TODO: implement goToBalance
    Get.toNamed(AppRoutes.balanceScreen);
  }
  
  @override
  goToCafeFollowing() {
    // TODO: implement goToCafeFollowing
    Get.toNamed(AppRoutes.cafeFollowingPage);
  }
  
  @override
  goToGiftCard() {
    // TODO: implement goToGiftCard
    Get.toNamed(AppRoutes.giftCardScreen);
  }
  
  @override
  goToInvite() {
    // TODO: implement goToInvite
   Get.toNamed(AppRoutes.invioceScreen);
  }
  
  @override
  goToMyInformation() {
    // TODO: implement goToMyInformation
    Get.toNamed(AppRoutes.editInfoScreen);
  }
  
  @override
  goToMyWistlist() {
    // TODO: implement goToMyWistlist
    Get.toNamed(AppRoutes.waitingScreen);
  }
  
  @override
  goToNotification() {
    // TODO: implement goToNotification
    Get.toNamed(AppRoutes.notificationScreen);
  }
  
  @override
  goToPayment() {
    // TODO: implement goToPayment
    Get.toNamed(AppRoutes.paymentScreen);
  }
  
  @override
  goToRefund() {
    // TODO: implement goToRefund
  Get.toNamed(AppRoutes.refundScreen);
  }
  
  @override
  goToReward() {
    // TODO: implement goToReward
   Get.toNamed(AppRoutes.rewardScreen);
  }
  
  @override
  goToAboutPassword() {
    // TODO: implement goToAboutPassword
    Get.toNamed(AppRoutes.changePasswordScreen);
  }


} 