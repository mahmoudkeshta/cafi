import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/get_help_screen/models/get_help_model.dart';/// A controller class for the GetHelpScreen.
///
/// This class manages the state of the GetHelpScreen, including the
/// current getHelpModelObj
class GetHelpController extends GetxController {Rx<GetHelpModel> getHelpModelObj = GetHelpModel().obs;

 }
