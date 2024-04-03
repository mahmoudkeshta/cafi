// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';

class CartItem {
  final String productId;
  final String ?categoryId;
  final String productName;
  final String? categoryName;
  final String salePrice;
   final String uid;
  final String fullPrice;
  final String productImages;
  final String ?deliveryTime;
  final bool ?isSale;
  final String ?productDescription;
  final dynamic createdAt;
  final dynamic updatedAt;
  final int? productQuantity;
  final double? productTotalPrice;
      final List size;
    final List ice;
    final List sugar;
  CartItem( {
   required this.uid,
    required this.productId,
     this.categoryId,
    required this.productName,
     this.categoryName,
    required this.salePrice,
    required this.fullPrice,
    required this.productImages,
     this.deliveryTime,
     this.isSale,
     this.productDescription,
    required this.createdAt,
    required this.updatedAt,
     this.productQuantity,
    this.productTotalPrice,
          required  this.size,  required  this.ice,  required  this.sugar,
  });

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'categoryId': categoryId,
      'productName': productName,
      'categoryName': categoryName,
      'salePrice': salePrice,
      'fullPrice': fullPrice,
      'productImages': productImages,
      'deliveryTime': deliveryTime,
      'isSale': isSale,
      'productDescription': productDescription,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'productQuantity': productQuantity,
      'productTotalPrice': productTotalPrice,
      'uid':uid,
          'size': size,
      'ice': ice,
      'sugar': sugar,
    };
  }

  factory CartItem.fromSnap(DocumentSnapshot snap) {
     var snapshot = snap.data() as Map<String,dynamic>;
    return CartItem(
      productId: snapshot ['productId'],
      categoryId: snapshot ['categoryId'],
      productName: snapshot['productName'],
      categoryName: snapshot['categoryName'],
      salePrice: snapshot['salePrice'],
      fullPrice: snapshot['fullPrice'],
      productImages: snapshot['productImages'],
      deliveryTime: snapshot['deliveryTime'],
      isSale: snapshot['isSale'],
      productDescription: snapshot['productDescription'],
      createdAt: snapshot['createdAt'],
      updatedAt: snapshot['updatedAt'],
      productQuantity: snapshot['productQuantity'],
      productTotalPrice: snapshot['productTotalPrice'],
      uid: snapshot['uid'],
       size :snapshot['size'], ice:snapshot ['ice'], sugar:snapshot ['sugar'],
    
    );
  }
}
