import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/chat_screen/models/chat_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FireData{
final FirebaseFirestore firestore=FirebaseFirestore.instance;
final String myUid =FirebaseAuth.instance.currentUser!.uid;
Future creatRoom( String email) async{
 QuerySnapshot userEmail = await firestore.collection('users').where('email',isEqualTo:email ).get();
 String userId =userEmail.docs.first.id;
if(userEmail.docs.isNotEmpty){

 List<String> members = [myUid,userId]..sort((a, b) => a.compareTo(b));
 QuerySnapshot roomExist =await firestore.collection('rooms').where('members',isEqualTo: members).get();
 if (roomExist.docs.isEmpty){
 chatRoom ChatRoom = chatRoom(
  id:members.toString() ,
  members:members,
  lastMessage: "",
   lastMessageTime: DateTime.now().toString(),
    createdAt: DateTime.now().toString(),
    
    );
   await firestore.collection('rooms').doc(members.toString()).set(ChatRoom.toJson());
}

 }}
 

}