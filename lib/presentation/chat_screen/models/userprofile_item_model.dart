import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.companyName, this.voiceMessage, this.companyLogo, this.time, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse2070x70);companyName = companyName  ?? Rx("Amazon");voiceMessage = voiceMessage  ?? Rx("Voice Message");companyLogo = companyLogo  ?? Rx(ImageConstant.imgGroup2);time = time  ?? Rx("02:00PM");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? companyName;

Rx<String>? voiceMessage;

Rx<String>? companyLogo;

Rx<String>? time;

Rx<String>? id;

 }
