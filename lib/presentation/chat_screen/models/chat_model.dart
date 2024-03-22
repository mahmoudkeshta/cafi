import 'viewhierarchy_item_model.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [chat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatModel {Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx(List.generate(1,(index) => ViewhierarchyItemModel()));

Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(userImage:ImageConstant.imgEllipse2070x70.obs,companyName: "Amazon".obs,voiceMessage: "Voice Message".obs,companyLogo:ImageConstant.imgGroup2.obs,time: "02:00PM".obs)]);

 }
 
class chatRoom{
  final String ? id;
  final List ?members;
  final String ?lastMessage;
   final String ? lastMessageTime;
  final String ? createdAt;

    

  chatRoom(
   {
     required this.id,
    required this.members,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.createdAt, 
    
    
   }
  
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'members': members,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime,
      'createdAt': createdAt,
    
     
    };
  }

  factory chatRoom.fromJson(Map<String,dynamic>json){
return chatRoom(
  id: json ['id'] ?? "",
 members:json ['members'] ,
  lastMessage: json ['lastMessage'] ,
  lastMessageTime: json['lastMessageTime'],
  createdAt: json['createdAt'], 

  );

  }}