import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/setting_screen/models/setting_model.dart';/// A controller class for the SettingScreen.
///
/// This class manages the state of the SettingScreen, including the
/// current settingModelObj
class SettingController extends GetxController {Rx<SettingModel> settingModelObj = SettingModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

 }
