import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/edit_info_screen/models/edit_info_model.dart';/// A controller class for the EditInfoScreen.
///
/// This class manages the state of the EditInfoScreen, including the
/// current editInfoModelObj
class EditInfoController extends GetxController {Rx<EditInfoModel> editInfoModelObj = EditInfoModel().obs;

 }
