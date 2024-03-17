import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/chat_screen/models/chat_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FireData{
final FirebaseFirestore firestore=FirebaseFirestore.instance;
final String myUid =FirebaseAuth.instance.currentUser!.uid;
creatRoom( String email) async{
 QuerySnapshot userEmail = await firestore.collection('users').where('email',isEqualTo:email ).get();
 chatRoom chat = chatRoom(
  id: "1",
  nembers: [
    myUid,
  ],
  lastMessage: "",
   lastMessageTime: DateTime.now().toString(),
    createdAt: DateTime.now().toString(),
    
    );
}

}