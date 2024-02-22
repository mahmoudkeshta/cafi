import '../../../core/app_export.dart';import 'textvalue_item_model.dart';/// This class defines the variables used in the [setting_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingModel {Rx<List<TextvalueItemModel>> textvalueItemList = Rx([TextvalueItemModel(userImage:ImageConstant.imgEllipse83.obs,textValue: "Khmer".obs),TextvalueItemModel(userImage:ImageConstant.imgEllipse84.obs,textValue: "English".obs),TextvalueItemModel(userImage:ImageConstant.imgEllipse85.obs,textValue: "Chinese".obs),TextvalueItemModel(userImage:ImageConstant.imgEllipse86.obs,textValue: "Thai".obs)]);

 }
