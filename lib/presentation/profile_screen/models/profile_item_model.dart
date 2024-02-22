import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.balance, this.balance1, this.id, }) { balance = balance  ?? Rx(ImageConstant.imgRectangle100);balance1 = balance1  ?? Rx("Balance");id = id  ?? Rx(""); }

Rx<String>? balance;

Rx<String>? balance1;

Rx<String>? id;

 }
