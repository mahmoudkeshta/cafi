import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/home_screen/models/home_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
  Rx<int> sliderIndex = 0.obs;
}

 abstract class home_Controller extends GetxController {
  goToshop();
  gOToProduct();
  goToProfile();
  goToChat();
  goToCart();
  goToYourOrder();
  gotohome();
 }
class home_ControllerIme extends home_Controller{
  @override
  goToshop() {
  
    Get.toNamed(AppRoutes.shopScreen);
  }
  
  @override
  gOToProduct() {
   
     Get.toNamed(AppRoutes.productScreen);
  }
  
  @override
  goToProfile() {
   
    Get.toNamed(AppRoutes.profileScreen);
  }

  @override
  goToCart() {
  
    Get.toNamed(AppRoutes.cartScreen);
  }

  @override
  goToChat() {
   
    Get.toNamed(AppRoutes.chatScreen);
  }

  @override
  goToYourOrder() {
   
    Get.toNamed(AppRoutes.yourOrderTabContainerScreen);
  }
  
  @override
  gotohome() {
Get.toNamed(AppRoutes.homeScreen);
  }
}
 
