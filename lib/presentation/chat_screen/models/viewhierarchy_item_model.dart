import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.id}) { id = id  ?? Rx(""); }

Rx<String>? id;

 }
 /**
  * class ChatUser {
  final String id;
  final String name;
  final String email;
   final String image;
  final String about;
 
  final String createdAt;
  final String lastActivated;
  final String puchToken;
  final String online;

    

  ChatUser(
   {
     required this.id,
    required this.name,
    required this.email,
    required this.about,
    required this.image, 
    required this.createdAt,
    required this.lastActivated,
    required this.puchToken,
    required this.online,  
   }
  
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'about': about,
      'image': image,
      'createdAt': createdAt,
      'lastActivated': lastActivated,
      'puchToken': puchToken,
      'online': online,
     
    };
  }

  factory ChatUser.fromJson(Map<String,dynamic>json){
return ChatUser(
  id: json ['id'],
  name:json ['name'] ,
  email: json ['email'] ,
  about: json['about'],
  image: json['image'],
  createdAt: json['createdAt'], 
  lastActivated: json['lastActivated'],
  puchToken: json['puchToken'],
  online: json['online'],
  );

  }}
  */


