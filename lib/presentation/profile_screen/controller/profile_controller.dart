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
goToset();






}
class Profile_ControllerIgm extends Profile_Controller{
  @override
  goToAddress() {
    
  Get.toNamed(AppRoutes.addressScreen);
  }
  
  @override
  goToAboutCompany() {
    
    Get.toNamed(AppRoutes.aboutScreen);
  }
  
  @override
  goToAboutSignOut() {
   
    Get.toNamed(AppRoutes.signInScreen);

  }
  
  @override
  goToBalance() {
   
    Get.toNamed(AppRoutes.balanceScreen);
  }
  
  @override
  goToCafeFollowing() {
   
    Get.toNamed(AppRoutes.cafeFollowingPage);
  }
  
  @override
  goToGiftCard() {
    
    Get.toNamed(AppRoutes.giftCardScreen);
  }
  
  @override
  goToInvite() {
   
   Get.toNamed(AppRoutes.invioceScreen);
  }
  
  @override
  goToMyInformation() {
   
    Get.toNamed(AppRoutes.editInfoScreen);
  }
  
  @override
  goToMyWistlist() {
   
    Get.toNamed(AppRoutes.waitingScreen);
  }
  
  @override
  goToNotification() {
   
    Get.toNamed(AppRoutes.notificationScreen);
  }
  
  @override
  goToPayment() {
  
    Get.toNamed(AppRoutes.paymentScreen);
  }
  
  @override
  goToRefund() {
   
  Get.toNamed(AppRoutes.refundScreen);
  }
  
  @override
  goToReward() {
  
   Get.toNamed(AppRoutes.rewardScreen);
  }
  
  @override
  goToAboutPassword() {
    
    Get.toNamed(AppRoutes.changePasswordScreen);
  }
  
  @override
  goToset() {
    // TODO: implement goToset


  }


} 