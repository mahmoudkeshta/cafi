import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addCartItem(Map<String, dynamic> cartItemData) async {
    try {
      await _firestore.collection('cartItems').add(cartItemData);
    } catch (e) {
      print('Error adding cart item: $e');
      throw Exception('Failed to add cart item');
    }
  }
}