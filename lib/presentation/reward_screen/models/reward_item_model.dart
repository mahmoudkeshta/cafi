import '../../../core/app_export.dart';/// This class is used in the [reward_item_widget] screen.
class RewardItemModel {RewardItemModel({this.referFirstFriend, this.referFirstFriend1, this.inviteYourFirst, this.widget, this.id, }) { referFirstFriend = referFirstFriend  ?? Rx(ImageConstant.imgImage44);referFirstFriend1 = referFirstFriend1  ?? Rx("Refer First Friend!");inviteYourFirst = inviteYourFirst  ?? Rx("Invite your first friend to register");widget = widget  ?? Rx("+50");id = id  ?? Rx(""); }

Rx<String>? referFirstFriend;

Rx<String>? referFirstFriend1;

Rx<String>? inviteYourFirst;

Rx<String>? widget;

Rx<String>? id;

 }
