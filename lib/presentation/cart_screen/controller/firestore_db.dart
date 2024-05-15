import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order_success_model.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirestoreDB {
  // Initialise Firebase Cloud Firestore
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<CartItem>> getAllProducts() {
    return _firebaseFirestore
        .collection('CartItem')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => CartItem.fromSnap(doc)).toList();
    });
  }

  Future editProfile(bool isAdmin)async{
    await _firebaseFirestore
    .collection('users')
    .doc('uId')
     .update(
      {
        'isAdmin':isAdmin,
      }
    );
  }
}