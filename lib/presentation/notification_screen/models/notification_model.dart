import '../../../core/app_export.dart';import 'userprofile7_item_model.dart';import 'userprofile8_item_model.dart';import 'description_item_model.dart';/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {Rx<List<Userprofile7ItemModel>> userprofile7ItemList = Rx([Userprofile7ItemModel(userImage:ImageConstant.imgEllipse5550x50.obs,text1: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,text2: "10:20AM".obs),Userprofile7ItemModel(text1: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,text2: "10:20AM".obs)]);

Rx<List<Userprofile8ItemModel>> userprofile8ItemList = Rx([Userprofile8ItemModel(userImage:ImageConstant.imgEllipse204.obs,textContent: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,time: "10:20AM".obs),Userprofile8ItemModel(userImage:ImageConstant.imgImage1650x50.obs,textContent: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,time: "10:20AM".obs)]);

Rx<List<DescriptionItemModel>> descriptionItemList = Rx([DescriptionItemModel(circleImage:ImageConstant.imgImage1650x50.obs,description: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,time: "10:20AM".obs),DescriptionItemModel(circleImage:ImageConstant.imgEllipse2050x50.obs,description: "Lorem Ipsum is simply dummy text \nof the printing and typesetting.".obs,time: "10:20AM".obs)]);

 }
