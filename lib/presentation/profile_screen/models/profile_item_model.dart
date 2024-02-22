import 'package:coffee_app/presentation/profile_screen/controller/profile_controller.dart';

import '../../../core/app_export.dart';

/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {
  ProfileItemModel({
    this.balance,
    this.balance1,

    this.id,
  }) {
    balance = balance ?? Rx(ImageConstant.imgRectangle100);
    balance1 = balance1 ?? Rx("Balance");
    balance1 = balance1 ?? Rx(Profile_ControllerIgm().goToGiftCard());
    id = id ?? Rx("");
    
  // ignore: unused_local_variable
  //Profile_ControllerIgm profile_controllerIgm =Get.put(Profile_ControllerIgm());
  }
  Rx<String>? balance;
  Rx<String>? balance1;

  Rx<String>? id;
}
